Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA428CD342E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 08:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qj2X2sIa48yj4P9Ny33qOR+6sEKieGJ8e30b1y8a/mU=; b=rtXx1h+FX69zdh
	+PnJ5o4KiunTGQkK8mceKAQFWWxlzKw3bCi0UKQTSViRibVH40xd8hBWyTOx9qEGb3Gz4Uw1vjq7K
	KhcNnm2YoyCN0vJnVNPhFnLqmLG1UGEOFEq82b7Di9/yE3yD8pcOUFpjDOEoHmDCNWu1CjE2R6g8f
	JaqvvRRhUlbvT+hnda+yDFefl/60Qqu6PCyWlS5bkdRWb6nmFZ94EbClBvcmPb9RVGICUzD6imT5S
	juup5xlLvzWqjelrkt5aEMEQO9V3uB3s9E/jSUW8NPVkjdhGHMATundj+S9Z4T8osmtdVH8pkqQct
	KAlU//HC6F4hqSPT9kCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOVQ-0000000Gozm-2Slz;
	Tue, 03 Sep 2024 08:03:16 +0000
Received: from mail.synergyflux.pl ([51.38.99.212])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOVM-0000000Gow1-3SeV
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 08:03:15 +0000
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
	id B166A258F4; Tue,  3 Sep 2024 10:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synergyflux.pl;
	s=mail; t=1725350482;
	bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
	h=Date:From:To:Subject:From;
	b=PsBcISDbrRnMl9gedgeAzxLL6wvBW3gT3oML8S/KjzQLQUYaSCoSwQbEgQ+vlaI0v
	 ufJhNldCoQrZgEVTokT0jYUwu/1XnVOfL1itrT8CvUtgX7zBXVhH4OZ+2vxgLoHYxx
	 KOiRNXnYCUMeig5yD0Vr8Bs4I5X12+Z14xpttf8knu5FTzT2bzXDeHnUWXgc2KTDfb
	 yYBhhF5WRF8mKqGNHtuhceoaaEWDSbiipOrX3wLCjFv7hfSkwiTnX1Qu5UyJHfqH3s
	 ksfaPf8m+QaE04Vw4aJNCjpIzKGYmS6y90RaSnEjeKtw5s+Evn7+p0+v+8l7Cy79bE
	 JAILCauutxa0w==
Received: by mail.synergyflux.pl for <linux-rockchip@lists.infradead.org>; Tue,  3 Sep 2024 08:00:42 GMT
Message-ID: <20240903084500-0.1.dp.3gdj1.0.dea6zq6cmi@synergyflux.pl>
Date: Tue,  3 Sep 2024 08:00:42 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_010313_109115_B3121BA6 
X-CRM114-Status: UNSURE (   0.88  )
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
