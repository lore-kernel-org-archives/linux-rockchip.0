Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 022E9CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 07:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XsKa9HyNhPeX6McB25LVg2GPY2NYwkjdW6kJp9Pdp+8=; b=PO/YAwXbDInFWQ
	F812gbQ3E8O5wzobhngBrUeaNV3a03u8HKPWne4hgMkzs8QZE/9MB/L/nH+pHpopEBiNu9+Iw9In5
	4k79hio0FuUymG7qpspFrYsGveFooituaTAbq4QM2x/Yr2ECx2wE/wo6E0qKXLkK4s74Q/2UPJPuQ
	Dqi9kS34kWbCGs0YZLQtfsCwAmRMt7drho6A2w5LiOqJc5gJPyNAQ04r+esrC9WhomwGyX+FmPxlp
	LISkA5QGpCRbOyA24F2+6wDTE7Vzgo1htIVYBFFiehnOVbufE21ofQH7gwrKcbwfzB89fW9qGgicn
	F8C1INB1IShLRMf1olBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruSQW-00000005ca3-0zgE;
	Wed, 10 Apr 2024 07:31:24 +0000
Received: from mail.haughton.pl ([195.231.81.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruSQR-00000005cWU-3sdp
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 07:31:22 +0000
Received: by mail.haughton.pl (Postfix, from userid 1002)
	id 7104082832; Wed, 10 Apr 2024 09:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haughton.pl; s=mail;
	t=1712734274; bh=+oYP7ZwnEeonL1pLtE73TJ85xaesKIG0Ys99vCW5hiU=;
	h=Date:From:To:Subject:From;
	b=dVsdVUMUPZMShkQdIS0a19ynQweU8HqIhZlA/IAMhz5G5a+KEBxbwuM4NcJU0j/rN
	 riTDx5OwDM07kJvNNRqNPS32Cab9tmAq3kKhzWHifjuXGsPoheCJV5yBjWZv9vBLk+
	 4dFcXJlVRmn8nfECWFaxGperhX7U0MmI7YUJiobHkt6H3Pr0pQgZYGERa4efyxAmhL
	 49HQyKJYMnBHy79+Yj+0xoxNly6Q7+yZy7ZFfTEepBGlc1/dNfq5isndYoNqS6xkwH
	 A+Jk5YOyu6JQrCMy21bY72xyXL75vccnmeVd+5eKxYg7Xyu45jkIWQR+2Aad+dlUvu
	 p+GgNuz5hdQ4w==
Received: by mail.haughton.pl for <linux-rockchip@lists.infradead.org>; Wed, 10 Apr 2024 07:30:59 GMT
Message-ID: <20240410084500-0.1.1j.jiq9.0.8r5b0nk8jr@haughton.pl>
Date: Wed, 10 Apr 2024 07:30:59 GMT
From: "Patryk Wysocki" <patryk.wysocki@haughton.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.haughton.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_003120_738451_46FCFB69 
X-CRM114-Status: UNSURE (   0.52  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpQYXRy
eWsgV3lzb2NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
