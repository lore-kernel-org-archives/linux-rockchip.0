Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC8CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 May 2022 07:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3hARtqXhXH909nCTb7xQmMwCqy2OJ5iPWsmTtdDWDw=; b=JI0agTrrg5PtiJ
	RTDMOJy8I6CTGXJQQPyLhHYmbBROQRkb+DibABMnnOEmDiNsQsKIwLRNno2bGrcThee/tZknfXBgZ
	Pt9x/i4lxUJkpOlGGOhfndvQOYu3VURV0D9S9JCBzwNP/AxlDt4ZSHLBZkulIoD51YOxmf6+fjk/g
	hPxmjFmg5n/GLX2PgD7LBUOUoGZgpOaaPqo6bfo3+bZFHPZdudR5fa9odoFv5GxreVs9QoSF4dXL9
	4Zzxz0muPsF15IjW3aVVTUrKEhNeiZGP9kpGdScMP9+Rn6RGRUpZMHvKh8Wz51QMbV4N53Xmvby4S
	aMyntcEMIUqy5ZXSAf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmsfQ-001u5W-6p; Fri, 06 May 2022 07:46:24 +0000
Received: from mail.greatagencyonline.pl ([89.40.125.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmsfM-001u3m-QP
 for linux-rockchip@lists.infradead.org; Fri, 06 May 2022 07:46:22 +0000
Received: by mail.greatagencyonline.pl (Postfix, from userid 1001)
 id E5352AA83F; Fri,  6 May 2022 08:43:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=greatagencyonline.pl;
 s=mail; t=1651823039;
 bh=ksvwLPFdjL017OLwir5xHXy3Vmrj/5fhZ5DwBI62qzc=;
 h=Date:From:To:Subject:From;
 b=wFU93vPcvGPHX1nVvttA2sja/5fhnUXmkWT+1jUwpXuW7L6CSNO/BpkbvXDpbbWU2
 DClheBvpRwO8TQPH+5FHQfmDFJCllKPxFA/LaoexFxf5ipyAgvBSRHrM7GVxMl6lXz
 EGIukkmFoVbBRDna/tu3ayig1JbYSt3bzBD9y9rFzSfcv3ibGcsxXjCGT/BRN5rhhc
 Mm7fpbU9PVLCE3QhQuCiMPExg+E8ThKiC6YzHfEeT+8wgBAiZsmM8F5wnS4gS4A4Pb
 Dy+2QWTWKHA9zb/QVrZcS1mb0oR7hZrJg2dWXWhqshH2JudjersFcn8DQrOCrfJo7w
 xk/06WTtYC8Wg==
Received: by mail.greatagencyonline.pl for
 <linux-rockchip@lists.infradead.org>; Fri,  6 May 2022 07:43:41 GMT
Message-ID: <20220506073002-0.1.3r.k1ng.0.afpork5ta7@greatagencyonline.pl>
Date: Fri,  6 May 2022 07:43:41 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Rudzik"?= <mikolaj.rudzik@greatagencyonline.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Nap=C5=82yw_Klient=C3=B3w_ze_strony?=
X-Mailer: mail.greatagencyonline.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_004621_136066_C01D7C36 
X-CRM114-Status: UNSURE (   1.45  )
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHIFBhxYRzdHdhIG8gbW/FvGxp
d2/Fm2NpIHBvenlza2FuaWEgbm93eWNoIHpsZWNlxYQgemUgc3Ryb255IHd3dy4KCldpZHppbXkg
emFpbnRlcmVzb3dhbmllIHBvdGVuY2phbG55Y2ggS2xpZW50w7N3IFBhxYRzdHdhIGZpcm3EhSwg
ZGxhdGVnbyBjaMSZdG5pZSBwb21vxbxlbXkgUGHFhHN0d3UgZG90cnplxIcgeiBvZmVydMSFIGRv
IHdpxJlrc3plZ28gZ3JvbmEgb2RiaW9yY8OzdyBwb3ByemV6IGVmZWt0eXduZSBtZXRvZHkgcG96
eWNqb25vd2FuaWEgc3Ryb255IHcgR29vZ2xlLgoKQ3p5IG3Ds2fFgmJ5bSBsaWN6ecSHIG5hIGtv
bnRha3Qgendyb3RueT8KCgpQb3pkcmF3aWFtLApNaWtvxYJhaiBSdWR6aWsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
