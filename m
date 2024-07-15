Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B63E3C3DA59
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 14:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9otSrl0fYn54ewwBEh0IwajBbjzWUMRdSChHVEHX2Zc=; b=KU0Mvno7+HA3h1
	3PFhx/HXsNSfvXE/iVgUj+/2PaBBBr04FNug784n7FX0E0Tl0eVUC55lJmbLCwEApJXK32P5saGeS
	SjzSxoXFS0yp45IOkND8WJbVNDZOaPK1XjHllTajZuEHrAydv4gkHHNfn3OQire8rs9dSGiaoGeHZ
	QThBgdo9l/33xgDnW+MILYh7gD6ORDnEoJ8zXAm9w197Sk5yJH2U5IMdeMuUJRpqcuthZDwuCBqyj
	VMp6IXnAxeUpQjnEVOgvxoe/FcXHK1DJFR5rcGEFxi+bB4XOz4fcIbyURemsmp0/atKn3sDgoSgGB
	kU5Eo2fH/Anob7pl4n8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMbj-00000007M5Z-0oqR;
	Mon, 15 Jul 2024 14:23:15 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMbe-00000007M4A-36VP
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jul 2024 14:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1721053385; x=1721658185; i=markus.elfring@web.de;
	bh=8W/NbhbOtzlfo5nBCm9HhO+NCk0WKIFpF3ts5SLPFJY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Vm8f0bNNH/uH+JUYznMdwwmJaEDOPlHOKqUivQ42dHq53qqz+HWx0jqe1HGO8ow0
	 wKzsAcDHN89s2ya/1w9tddaqU+LQmyToFb4cxArMOwWvq0yxUfv6Set9i236MkC/s
	 vzf5WvMtto/hjUAKh9JG9nQ28AcPIm4RwDLEjhnVEuDcMfyvA92FNe81w4OLj9qOC
	 5wZF+BAU/amD/MNMqIA5nHDY9y+e/+CH33e6/YIvItDME2G90ARxr0xU+dk2t0Ll1
	 Zol9c0sow38k9skELR11H+Z37Mpw/iSvgZ3O8eG0E/DV3SOIt4iGlJUFex88lNlhP
	 gwZ1DypQxOvWQRDOWg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.82.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MActe-1seKy91ilU-00AZo0; Mon, 15
 Jul 2024 16:23:05 +0200
Message-ID: <3644b87d-d283-4539-aa61-263ca7a81249@web.de>
Date: Mon, 15 Jul 2024 16:23:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240712103000.16655-2-benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240712103000.16655-2-benjamin.gaignard@collabora.com>
X-Provags-ID: V03:K1:QfwYEWLVQ6kZx6KTIuE8fzL7Zjn6qY++jXuW43skhT6HeJrL9pT
 HrzaG5PzYShFRTcgkVoKMz4coboztN8K/zsPnJodLKrNMxR0aMv3lLFlfKA0GI79RzLkFmm
 qk/yuYfEZkTdvGoGxkIdZrzfAvzf9HUaIYokswkbAc6bE/KK2HoPDUKyctn2CEsmL8LqALB
 YV7fkjhhFBCMzEPAwFKGA==
UI-OutboundReport: notjunk:1;M01:P0:SbuFEh6f8Ms=;vADHCL5fWBqHt+00OVZkSE0Y1nH
 4ivCoRthhuJGr0uvXsL3w8U6jVaXp6qZqBXa+P0djltwj2akn59hQ1IPIfLdatMvr6Dr85DJE
 z0FacJoMLEJjTlL1UsRgaTwAUbxruEUrx8RjPxDVgASmpI9+7H/SWp9u939j73OtGlaut3/2F
 hv5Z+X9ki0CdO4gsMbpQjmm4yvewbEvOCQ3bvCPYosajRe7fQvFhZYFB3fSNiY6FiT0cI7TVV
 lR7uYssDKb66j8pVpLg1tbjdRmr8uvLTYlejJDF1FUZavqyfbqmGJZLc/SIpp6w73NRc6gN+4
 10oSKv2PpE1K1AFWDjWK4eaWFKQZAQoezPk7O/Cm7szJlw/8XZ0B3kNbBA0oglJkHCFUUuocO
 thPHxQkVN5AazxvLgueaTehmeAy7PMdaOghsDTGOOsU13jjw4ohdeSrExlTpbxQml5P/qWbo4
 ouAPmDckx8fFuB624XgLHACoX2i6GH/ZY89d83dRlUm6JOo6V9DGr/YyWEYPthuoPPsZmoP0g
 M6tZBpjIzQSPOHHob2TcrHygdVewOInddL7b2OHuPNZni84bcUtFcgzUdkei1nbRhgcYTdsRu
 mTpZ2LvPCuU6fUqzne84dVp5Yj3i0XZwXjL8TepHWpt99NpicVC4+XsY3HODZg9f/OARuM0W7
 DtwCQNtA1YAGzvkOUPtc6AbnVfPsMXIPx7ETL6Y7WQRrS4iO+NE14wbCTEvhYuwg6f8VjLu52
 JYp1iZR4L2usRb6AHvlJanj76hoZvLC/cvFkNw6A4kxqv984wNmlnSTsOd8JA+IbIZateCDIU
 LFLREtSlSob4SjzJo8BeA0VA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_072311_287394_F8E8E404 
X-CRM114-Status: UNSURE (   3.81  )
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

PiBBZGQgbmV3IGZsYWdzIHRvIGVudW1lcmF0ZSBhbGwgcGl4ZWxzIGZvcm1hdHMgd2hlbiBjYWxs
aW5nIFZJRElPQ19FTlVNX0ZNVCBpb2N0bC4K4oCmCgpXaWxsIHRoZSB3b3JkIOKAnHVuY29uZGl0
aW9uYWxseeKAnSBiZSBtb3JlIGFwcHJvcHJpYXRlIGZvciB0aGUgbmV4dCBzdW1tYXJ5IHBocmFz
ZT8KClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
