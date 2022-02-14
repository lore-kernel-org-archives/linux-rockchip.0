Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B2C7C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MYJGoNk2+A/dgT7wyFu5AN9QCUL4xNmRP5F3/NxSAMs=; b=byrKON2W7KcssU
	UBwMNhol9jabL3Vmqd2fAWlD4HliXen9R4cEDy5/gfQROJ3QvOQxP/Fzjc4neHhu5zpTHTWlcq5Tl
	q8XOJhlRHuGSGyQhv5oY+R33+2m2x2Nr/JvczwNe+qGlkB/UQvzEu/mLTryZtMIGhXAXMu8nx4oNu
	2ko/Yxr/1SqkjjOodQ/1umdI1nfkINBxgFuccN+fAy+vX5bH4x1PIKlQNqe8o0D+SA36Bf8YPmqKh
	y/GVcc/mOIWTtGekLIs/fKsqJkmsxiso/+HiM1b7poioJ/dsUQMVruL8c7F+kFrMeHwsXHEmxo7vY
	aIxQFf/s3xE3872r97Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJX5Y-00E4vG-4U; Mon, 14 Feb 2022 08:52:04 +0000
Received: from mail.ruletown.pl ([192.71.213.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJX0F-00E2BQ-U0
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:46:37 +0000
Received: by mail.ruletown.pl (Postfix, from userid 1001)
 id 0AE6C40AF6; Mon, 14 Feb 2022 09:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruletown.pl; s=mail;
 t=1644828369; bh=VNuNg2MzRkdVVfp4kSZZW7SxoKEFGotk5GCW4ktyH/8=;
 h=Date:From:To:Subject:From;
 b=hSD1oKuvYdvy0GhorZqV7UMRGxkkFXrgDA13xoi+lM3lupPxG0pw9Fyv2lPv79N0h
 RZ/cFCuFQKAm0LDK6atkKibZzV8/eVH3gCysFn/LoyzmFESxggtt6yZG3LyKkBW9N7
 i33/jaJpqe0BYSwf9g0YYnDdkrwCsXR7whP2BQW/hoA4k0QQ8XNUKJxVwlpOvXbdXq
 QRrxtJoRcDNYvFxvfS7xCdP9Xr/c72BZ0HtaBlq7b82LKpGBr1lz/C+o4q0rBCnHHn
 q9C3U+zChEr47yQKOJx8SBshgxmfUF5y1U9adXLqzBQzxfxD8rdLGWqvYQfFb0c/93
 dsNd4/8iBytCg==
Received: by mail.ruletown.pl for <linux-rockchip@lists.infradead.org>;
 Mon, 14 Feb 2022 08:46:01 GMT
Message-ID: <20220214084500-0.1.v.202l.0.pacnfbg7ao@ruletown.pl>
Date: Mon, 14 Feb 2022 08:46:01 GMT
From: "Filip Ostrowski" <filip.ostrowski@ruletown.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: W sprawie samochodu
X-Mailer: mail.ruletown.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_004636_163419_F4226FA8 
X-CRM114-Status: UNSURE (   1.44  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKY2hjaWVsaWJ5xZtteSB6YXBld25pxIcgUGHFhHN0d3Uga29tcGxla3Nv
d2Ugcm96d2nEhXphbmlhLCBqZcWbbGkgY2hvZHppIG8gc3lzdGVtIG1vbml0b3Jpbmd1IEdQUy4K
ClByZWN5enlqbmUgbW9uaXRvcm93YW5pZSBwb2phemTDs3cgbmEgbWFwYWNoIGN5ZnJvd3ljaCwg
xZtsZWR6ZW5pZSBpY2ggcGFyYW1ldHLDs3cgZWtzcGxvYXRhY3lqbnljaCB3IGN6YXNpZSByemVj
enl3aXN0eW0gb3JheiBrb250cm9sYSBwYWxpd2EgdG8ga2x1Y3pvd2UgZnVua2Nqb25hbG5vxZtj
aSBuYXN6ZWdvIHN5c3RlbXUuIAoKT3JnYW5pem93YW5pZSBwcmFjeSBwcmFjb3duaWvDs3cgamVz
dCBkemnEmWtpIHRlbXUgcHJvc3RzemUgaSBiYXJkemllaiBlZmVrdHl3bmUsIGEgb3N6Y3rEmWRu
b8WbY2kgaSBvcHR5bWFsaXphY2phIHcgemFrcmVzaWUgcG9ub3N6b255Y2gga29zenTDs3csIG1h
asSFIGRsYSBrYcW8ZGVnbyBwcnplZHNpxJliaW9yY3kgb2dyb21uZSB6bmFjemVuaWUuCgpEb3Bh
c3VqZW15IG5hc3rEhSBvZmVydMSZIGRvIFBhxYRzdHdhIG9jemVraXdhxYQgaSBwb3RyemViIG9y
Z2FuaXphY2ppLiBDenkgbW9nbGliecWbbXkgcG9yb3ptYXdpYcSHIG8gbmFzemVqIHByb3Bvenlj
amk/CgoKUG96ZHJhd2lhbSwKRmlsaXAgT3N0cm93c2tpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
