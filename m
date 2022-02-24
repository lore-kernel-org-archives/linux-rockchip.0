Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF9A0C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 09:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H7a6Tyy+GP7gs/hNrIjRsMHNK+l7M84BaBG+NV8a8RQ=; b=Yio6jJ5HSX4i/s
	jP/YkjT/nvd4h6Vupw2jIZLGuIXdTJF8r+gsodgsoBswe0f6VXzQrGT0E/V+5+rPYY/oMQHGJOaYS
	dSUwZSVGH3ENSCWzR9cNKZelorGbADwPeni3JCSubCaPSpX+eAGPCOc4M9VBoR/fRa/5AWKfVtggP
	qEKvjZpLMhBf4LwNn7vUr4CGsd34ZTEEz9BtuP1+F3ui2Ikj4bgp/GaWwaJXVjhkwFC9lDkyN4A/p
	heCIoryTq3+rNoitxzmNIsGddKdhTqHO54mGw9F9jf1LpHC6d8wxLTgxYfhuUXDuGF8rGbfMQirId
	NR5lrPNNmdU1ICGeRJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNAQe-0004QM-FK; Thu, 24 Feb 2022 09:28:52 +0000
Received: from mail.onlinesuccesses.pl ([198.244.150.235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNADE-00HYer-88
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 09:15:01 +0000
Received: by mail.onlinesuccesses.pl (Postfix, from userid 1002)
 id 8A0DBA4951; Thu, 24 Feb 2022 09:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onlinesuccesses.pl;
 s=mail; t=1645693619;
 bh=nE8HqilgMh4dy7+Z8ksfg7Bc9rmPeQtYFq3/3YR2ODU=;
 h=Date:From:To:Subject:From;
 b=k+NOaZCfYMLIpufkTXglIlncjpRop2Kz18rUOvAThDG3Rv/NfVCQoOBMw3cLEtIjv
 W33Dd/T4yFW7W14lHyPJ1OYLQqscjMnBMavA3f5X8QaWzSw6IXydh1FpiHUrZNT991
 J7iFfCvwYbgVwQZLkgJjFaTCAZObkG1bDtV3sBvL/YEUDvDch+VDfN72yp/HwvlBpn
 f00g5SAi4p40a5DjV8n1dibN7xh7TmahrExDp7PxfWB+SUuPvM3rQ1+Sl2hu9g2vNn
 0haAuBzQP8A6JBNWTIPEYaPTvCvJ9g0K6eD66lgw91L+2fYb1upaXe6DlsSxsEjnX0
 U04ORPxhYFQPA==
Received: by mail.onlinesuccesses.pl for <linux-rockchip@lists.infradead.org>;
 Thu, 24 Feb 2022 09:05:53 GMT
Message-ID: <20220224074501-0.1.2r.hotd.0.2wlw72z52r@onlinesuccesses.pl>
Date: Thu, 24 Feb 2022 09:05:53 GMT
From: "Wiktor Zielonko" <wiktor.zielonko@onlinesuccesses.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Ruch z pierwszej pozycji w Google
X-Mailer: mail.onlinesuccesses.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_011500_472003_9F611BCF 
X-CRM114-Status: UNSURE (   0.76  )
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

RHppZcWEIGRvYnJ5LCAKCmpha2nFmyBjemFzIHRlbXUgemfFgm9zacWCYSBzacSZIGRvIG5hcyBm
aXJtYSwga3TDs3JlaiBzdHJvbmEgaW50ZXJuZXRvd2EgbmllIHBvenljam9ub3dhxYJhIHNpxJkg
d3lzb2tvIHcgd3lzenVraXdhcmNlIEdvb2dsZS4gCgpOYSBwb2RzdGF3aWUgd3lrb25hbmVnbyBw
cnpleiBuYXMgYXVkeXR1IFNFTyB6b3B0eW1hbGl6b3dhbGnFm215IHRyZcWbY2kgbmEgc3Ryb25p
ZSBwb2Qga8SFdGVtIHdjemXFm25pZWogb3ByYWNvd2FueWNoIHPFgsOzdyBrbHVjem93eWNoLiBO
YXN6IHdld27EmXRyem55IHN5c3RlbSBjb2R6aWVubmllIGFuYWxpenVqZSBwcmF3aWTFgm93ZSBk
emlhxYJhbmllIHdpdHJ5bnkuICBEemnEmWtpIGluZHl3aWR1YWxuZWogc3RyYXRlZ2lpLCBmaXJt
YSB6ZG9ieXdhIGNvcmF6IHdpxJljZWogS2xpZW50w7N3LiAgCgpDenkgY2hjaWVsaWJ5IFBhxYRz
dHdvIHp3acSZa3N6ecSHIGxpY3pixJkgb3PDs2Igb2R3aWVkemFqxIVjeWNoIHN0cm9uxJkgaW50
ZXJuZXRvd8SFIGZpcm15PyBNw7NnxYJieW0gcHJ6ZWRzdGF3acSHIG9mZXJ0xJk/IAoKClBvemRy
YXdpYW0gc2VyZGVjem5pZSwKV2lrdG9yIFppZWxvbmtvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
