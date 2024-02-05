Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 698B7C4828D
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Feb 2024 09:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qj2X2sIa48yj4P9Ny33qOR+6sEKieGJ8e30b1y8a/mU=; b=kWFiPgKhrQ4zmV
	qoubudswzPrRxIyoiQmpumogsFw7Lbaj/cyc0zQbwccSeIboxnMR7hgmKZ412s9yOTeda4zEA+wrj
	/3KlYwOqMSkdzS81y+/qYF+yNnODofZ0cLNn/U2PWEH+MdT++HPQOSZC4MRlkd9iBVVDDGpJekOFM
	qFEf47xaiYRqU5xAg6cz1WCywAVtPdUFe+LtycUmQokNijVKu3/w1Eiqujsvo2Mthm6nRaAXIqY1n
	yGZeYGOKxB5bdLn/aiqW0+GvK8I0pHAxBqh7MIAwP3DBoF6D7p24JHaEctR6iWBYFB1cGXUEmdAeU
	W/kTEuVl5AhtC0PBVjsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWv0s-00000002Ypz-0lVf;
	Mon, 05 Feb 2024 09:11:38 +0000
Received: from mail.synergyflux.pl ([51.38.99.212])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWv0o-00000002Yn3-2Q05
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Feb 2024 09:11:36 +0000
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
	id 2AA3F25DDA; Mon,  5 Feb 2024 09:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synergyflux.pl;
	s=mail; t=1707124293;
	bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
	h=Date:From:To:Subject:From;
	b=e+up2W6hSteiXyVu1FU6t4C/INWEtfGV65rYzPKil5heUtZnvN5mkPdmtdpCMOLLX
	 v0UsJLnxiYeVLRvUuMnB5P5Sf2K6mVK3BilXKo9+1N1HVQLag4PJM9hUU4s9jconX6
	 OlFh7I745sXwfj1lE1IS8ipUM9Xj8E7Jixv07dHdWiPoavTPXCRHtScJ4yvDjlFhBU
	 UPIZnGfGqitIKjbCl3dca4c+pE4ZpFeAb9/1g6mVdqpZh1jKE6aw6MiLr/i7+2l71o
	 C3ijRf2KHxQVSmsP1GEx/ty1VQxzWeddKaaGSCybKiBAYuTyoFMpIHkv5bVMuJQUgD
	 HfS2RBmpAL/iw==
Received: by mail.synergyflux.pl for <linux-rockchip@lists.infradead.org>; Mon,  5 Feb 2024 09:10:51 GMT
Message-ID: <20240205074500-0.1.9m.1w6vo.0.lbcbx2vi7s@synergyflux.pl>
Date: Mon,  5 Feb 2024 09:10:51 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_011134_846945_8AD185BA 
X-CRM114-Status: UNSURE (   0.93  )
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
