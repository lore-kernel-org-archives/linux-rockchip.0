Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83055C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 08:51:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5424063212
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 08:51:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5424063212
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=bizjoindeal.pl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H5EHAfYWiZyRBSwfcXDxX/y/D2jCeAE3MQu0eCzO1DY=; b=CLM5uQnm4BN6i/
	P03u0KRya/zH3bNuBD0Y08Ps46gY/VyFC2nK9TR1cyhW/bzCRo9W9utMe4l9CTeN5WdbqIv0Twkn9
	QmczoPDFlQvKRPulhKZUKId6Y0edp27ZGfVm3ccas/346lC8phASPrdMoJGTm6Q9SV+Xjc+133EUH
	DuAuVF1ZaHNCL3YESQCQPLH5aklC1IR3Iq1gjo72Y+heFC6Rb4nkpiWV2W8B762itGGoJ0DvS/uLW
	i6gKamd5lQzrw6oMwb7Mqo9jJntNlQJ0sZzwnEnUHPBe8UEMj9mOPMvgzvut4E5YFrKiugyAW6W6r
	uUf3wUNqzLbBpTnsNgEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmuBt-000o9r-A5; Tue, 16 Nov 2021 08:51:45 +0000
Received: from mail.bizjoindeal.pl ([80.211.97.164])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmuBr-000o98-KW
 for linux-rockchip@lists.infradead.org; Tue, 16 Nov 2021 08:51:44 +0000
Received: by mail.bizjoindeal.pl (Postfix, from userid 1001)
 id 3D389A2A15; Tue, 16 Nov 2021 08:51:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizjoindeal.pl;
 s=mail; t=1637052702;
 bh=JZuQ1fK7zFtz2oeUB7Xfid9vb7kUywdmDd2OluR8ywA=;
 h=Date:From:To:Subject:From;
 b=P241JI5lH2+D3BAI5uaf37KRvlJMNrQ/fypz0CkNwJLOTWQzWSklKCkUlhkQ5ir9z
 v57BnUYj61s7BVyfIFUxKCSuIiqKsRhpS6SO8uc87N8xsWylGldfAwdpja5cO+gGrp
 a4uECSZnDsRc8rC8rYIFdXshCD05ECdeDREF+RyrtcK2p5Al6ZvwHJyX5FwnHY1QkM
 o/Qf4Dxi5Nz1aAdyfVHR25r2v0acaYgH2biOonsCWHsUFj/vjCA83SxMsM21jYTriC
 2s/EbKct0Ajkzp8D63KM0e9qRalJ4kOS67hc2Xw6yYv+Aiv75ol2ocH/UT2dCA6MjW
 nSeqS1VL0q7NQ==
Received: by mail.bizjoindeal.pl for <linux-rockchip@lists.infradead.org>;
 Tue, 16 Nov 2021 08:51:12 GMT
Message-ID: <20211116074500-0.1.60.f0v6.0.ukmr65igby@bizjoindeal.pl>
Date: Tue, 16 Nov 2021 08:51:12 GMT
From: "Dorian Kwiatkowski" <dorian.kwiatkowski@bizjoindeal.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Fotowoltaika dla firm
X-Mailer: mail.bizjoindeal.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_005143_836207_C89CF782 
X-CRM114-Status: UNSURE (   1.58  )
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

RHppZcWEIGRvYnJ5LAoKa29udGFrdHVqxJkgc2nEmSB6IFBhxYRzdHdlbSwgcG9uaWV3YcW8IGRv
c3RyemVnYW0gbW/FvGxpd2/Fm8SHIHJlZHVrY2ppIG9wxYJhdCB6YSBwcsSFZC4KCk9kcG93aWVk
bmlvIGRvYnJhbmEgaW5zdGFsYWNqYSBmb3Rvd29sdGFpY3puYSB0byByb3p3acSFemFuaWUsIGt0
w7NyZSBwb3p3YWxhIHd5Z2VuZXJvd2HEhyBzcG9yZSBvc3pjesSZZG5vxZtjaSB3IHNrYWxpIHJv
a3UuCgpDaGNpYcWCYnltIHBvcm96bWF3aWHEhyB6IFBhxYRzdHdlbSBvIHRlZ28gdHlwdSByb3p3
acSFemFuaXUsIGEgdGFrxbxlIHByemVkc3Rhd2nEhyB3c3TEmXBuZSBrYWxrdWxhY2plLgoKQ3p5
IHPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaT8KClBvemRyYXdpYW0sCkRvcmlhbiBLd2lhdGtv
d3NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
