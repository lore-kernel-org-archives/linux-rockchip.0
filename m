Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 033AAC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 07:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qj2X2sIa48yj4P9Ny33qOR+6sEKieGJ8e30b1y8a/mU=; b=l3jgLtNd4tYXrX
	1xi3/4NRdWiRvRhJEZdkeYcWwB3CybWg2Lu8QU04HbRnPlAE/eO//5rnJlGiPcP7MTXOA0Jr2SbhT
	O4Qhi7sv9/qsapx8vmRj1yzMsZ7tN3LGklqShvXWFKjSRgwjS/wWz8NaGoUS8dAKIgFnqVhzHZHd0
	DGiquu0hweC+TifU4bYSoEw0sjwcC+Zh+SZvkR80Gcrw0w+vj8s1gyLN5kODKyUPw6JAvD1nQemvB
	WnK0pl+qD6vM3upP7Qx2T7jlCruWoRweJYSdO7TtUl3cIS586JVNEK1hy2atxnUBAauMl1wCk+gnP
	cZHewYkvl3uyQ/sTyO5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZmla-00000007xYb-3HzZ;
	Fri, 02 Aug 2024 07:31:58 +0000
Received: from mail.synergyflux.pl ([51.38.99.212])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZmlX-00000007xX3-2hsQ
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 07:31:56 +0000
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
	id 38484259F9; Fri,  2 Aug 2024 09:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synergyflux.pl;
	s=mail; t=1722583914;
	bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
	h=Date:From:To:Subject:From;
	b=mokOFefsVYN7dv3Y/UItaW5DAKuwoev0h9e5waj41QXA/g8I9R1QUDRV90xqUnxX7
	 vAPEnVVIVoWLgEmQIsTEMhvEutCsdDiawQVBJDShAs84bqoL0SKc0X49oo1eKfiQQU
	 uokpbUvHNYnkFukgB2nbbOfhS6VWuRVwDHN/yd13yvGMf1WXj8itqSabw09mvNlgmC
	 Z2fntAzAkko39iNblh80S8BoMqVFV9AwNZec3ZM8uwql/HqsvhupSVioR2R9o+SPUY
	 xeG/pF2ljKukuir8XJmob7LUyx5v5pxwG+FnUMxZ2pRJAvowLwXrHECQajv7UbEFqo
	 Tne/g6v/FDyTw==
Received: by mail.synergyflux.pl for <linux-rockchip@lists.infradead.org>; Fri,  2 Aug 2024 07:30:58 GMT
Message-ID: <20240802084500-0.1.d4.39hcx.0.gkunolg797@synergyflux.pl>
Date: Fri,  2 Aug 2024 07:30:58 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_003155_853571_3CE5ECD4 
X-CRM114-Status: UNSURE (   0.40  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhy4KCgpQb3pkcmF3aWFtCktvbnJh
ZCBaaWVsacWEc2tpIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
