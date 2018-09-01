import UIKit
import Anchorage

final class CategoryRowTableCell: UITableViewCell, Reusable {
    let colleciton = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(colleciton)
        colleciton.edgeAnchors == contentView.edgeAnchors
        colleciton.backgroundColor = .white
        
        selectionStyle = .none
        
        separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        
        if let layout = colleciton.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
