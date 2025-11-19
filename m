Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F2B8CF3182
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pSkDyVxb/5gT+vUVgrAT7nkW8AdIH8OsTXZFeP18u94=; b=Htj6P5WmzQG4bH
	KjNdnO5mXYeuWVFbsMkp0bfnTqZWal72NUEeqgfTTVefKH9juWpN30Kz3d2a52jkahruHUEDYIfUM
	PDRdRLysRNmk8rK+37MkTQtiXz0x9pIO0QUEDHT9TtvgLZOvX0BeaKOE4gaAlfAQmpfQuFZkloTYv
	0j55go+NpFzPUs9Du+Z4nhfSIA5DZmEo42851vLF95xgZkZ+ARPmcWiif88TfRHSkpAGM9wDPo6zM
	X1tWaq0brW1wuu2h4xyu3TRNtc6bf8KzlqLLqyc8cvFXtsVJTpIw/hWOHxAhOr/EYr1rdIZGv2WpM
	IMPgPedvWk9cqwK6FkAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLe4p-00000002pbZ-1Woa;
	Wed, 19 Nov 2025 09:02:11 +0000
Received: from mail.novencio.pl ([162.19.155.164])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLe4m-00000002pai-2Q2H
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 09:02:09 +0000
Received: by mail.novencio.pl (Postfix, from userid 1002)
	id BCE6D24D17; Wed, 19 Nov 2025 09:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novencio.pl; s=mail;
	t=1763542921; bh=fIh67CnJs35z4uTVN1yEzBZIG1sWJSjOc8Phu/rB5ug=;
	h=Date:From:To:Subject:From;
	b=qkPoPzaH9tt6ty8BevM+ePUBWAfq+gJr3p306DKAL+crXsjF0+fH8USGAXf+qZ/2O
	 YCEBfK/UA3HLux+nN8ARgG1rG75y6Nd8Jee8DB5jNYVygWkhCZC2+WREJQLJIUuSEV
	 wyvsZfs+ew8yKeMapW3C2BkVZXgG8Q/8/QxOyjmzAOHJ8vZbR4d6e9VtkFB3gAxBi1
	 Ns8dvbLOTzz42RO9hgf6CSZAMt14spe12B9mxu30+jlbKR3SUeyWOTnl9irEIO6+Fu
	 qwgRJpPeNU/WB2JogEnnnDwDNy2jgM18GDQfHtAtnRzv5/082pImZ9Lcv78YyfjN/i
	 xV2LDGmFeqEfA==
Received: by mail.novencio.pl for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 09:01:03 GMT
Message-ID: <20251119074742-0.1.5y.z4kd.0.139j60of30@novencio.pl>
Date: Wed, 19 Nov 2025 09:01:03 GMT
From: "Marek Poradecki" <marek.poradecki@novencio.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Wiadomo=C5=9B=C4=87_z_ksi=C4=99gowo=C5=9Bci?=
X-Mailer: mail.novencio.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_010208_767213_E7ABF6CB 
X-CRM114-Status: UNSURE (   2.03  )
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

RHppZcWEIGRvYnJ5LAoKcG9tYWdhbXkgcHJ6ZWRzacSZYmlvcmNvbSB3cHJvd2FkemnEhyBtb2Rl
bCB3eW1pYW55IHdhbHV0LCBrdMOzcnkgbWluaW1hbGl6dWplIHdhaGFuaWEga29zenTDs3cgcHJ6
eSByb3psaWN6ZW5pYWNoIG1pxJlkenluYXJvZG93eWNoLgoKS2llZHl2IG1vxbxlbXkgdW3Ds3dp
xIcgc2nEmSBuYSAxNS1taW51dG93xIUgcm96bW93xJksIGFieSB6YXByZXplbnRvd2HEhywgamFr
IHRha2kgbW9kZWwgbcOzZ8WCYnkgZHppYcWCYcSHIHcgUGHFhHN0d2EgZmlybWllIC0geiBnd2Fy
YW5jasSFIGluZHl3aWR1YWxueWNoIGt1cnPDs3cgaSBwZcWCbnltIHVwcm9zemN6ZW5pZW0gcMWC
YXRub8WbY2k/IFByb3N6xJkgbyBwcm9wb3p5Y2rEmSBkb2dvZG5lZ28gdGVybWludS4KCgpQb3pk
cmF3aWFtCk1hcmVrIFBvcmFkZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
