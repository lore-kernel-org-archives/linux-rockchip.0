Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09E4BC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 10:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXJPzly5YMuIsB1kh5uOp2gXYr48R1zUeDPmfKVyP34=; b=13fPaR1AdwXMAm
	2TdrL165PpeHdDAooC4LQWvfH+ue/8fmcgsOF0HQJQK7IXb42895ICg2egG+cHKBUBaX4XOjGfWXh
	3CAKD34ptJN7AWJXSaq11BByuHf8nJPRlziTx6Yn/uj39/7LzmidhA/YDUwpC9b5FGvkmI6qVi+n7
	KKBaMPC5NYhMAZunNfZYaaNdvzPXWF41QXgWiizVfbmfQQX7vSrL2hjauQWGUOL0egfays4oTVo7R
	gwKQVnm7BRmo920REd6hU2RJog1vq7yIbwQ5zZgEFGeo7obupRV/JaxCVZPCTGwMzK3cElsGxlaU5
	g3jQ3HES6Lh+BkKZmzRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrzaP-00Bmsr-Ju; Fri, 20 May 2022 10:10:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzaE-00Bmne-VF; Fri, 20 May 2022 10:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=kPDr2d9+6sr9lCyWq7WNBoRvBQxorjF1e30W8kRss44=; b=ORMP6ZRIcL1XEfb0VLpniup0Fj
 i8tIoZtviS0swWatLegIG3PSxbiSevbx7h0W0IN5eEAhzGBV2mFnRUPpSlmw5B7vcHoqcwEnt6JSO
 ps0Ian6AHXxNH1yU+l6h5e0dWMd+GtVmuq5ONyG8dpYZ174esmCil8dQo/R5Rre+TUOVqJk7dpqIx
 VBMrn0j56/Ro3N5rZJM4+ZvZeaYTnFNmdkYJ1orMI+eF1fi98MPfSLOgwmJi3kqaMdttyCeYdN0T3
 vU+Kf0XPM3xgR6Iob9J7F0alH+h2tkRO5rUyzEypY1kiYcWzfOiXwMAJ8tH8e10xNlDI2rtpjD7nT
 fOWxsxuQ==;
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzTU-002IyL-7g; Fri, 20 May 2022 10:03:14 +0000
Received: by mail-pl1-x631.google.com with SMTP id q18so6952898pln.12;
 Fri, 20 May 2022 03:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kPDr2d9+6sr9lCyWq7WNBoRvBQxorjF1e30W8kRss44=;
 b=WtkN6qR9mLXwX5J+02dBVs103/z9HbD0uTfUEmErMVHDJhdDK5IQ6d25M9w58GTzR+
 X/VUrWaJjeKoFmbpJvWmqOWQJDiMfqZBGDgSkS5qZ29cvXRcKD+bX92ZZdvBBamlW12D
 tqUxEIkfWl8XjVS0IAoyXLqmfCvAfJZ7l3gn7FkEz+mF1919qtuUax9y3BOl8yrABq5p
 U4TJaMGM0PgDJqxNhGbleQszDn6sXJJXYsWAMnCyv68IFPtAWTbw4Y6wC8UMUMxTxcXa
 goNH8SgpC6j74ztPP8oVp05xpc8ePy875D72S+2RJIFuB385Z3Lun1avyq/tke8iVz0u
 kMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kPDr2d9+6sr9lCyWq7WNBoRvBQxorjF1e30W8kRss44=;
 b=YHv8oP6zrlMBGJTei7kU/7hbRMkK0vwgcyIdqwYq4zPyHwrsKZtAt82h54ayfTOx8x
 KBd6MximSWsnUkqQMTacJKzZsM3P2GukcUUjO1YYbP+/3X22dM/Gb+wxzqqs+RzIAH0l
 Frpa7igAwH4uG4zNioMQJv9bSyg7xGX4P58XrOhVgNNrL7pGisueux1ThS84uEl1Xf5m
 LA4q7q0P66JzERUi6wYIUJC+QYFBQ89sHm5g/Om+CQ6v3/frXpbHbiqjjFIjromFyktN
 0WevBwjDHv/N5i3nji68qEYNNY8BsZ5ra5utjTAFuQfkrSgylFklP7rkEHlt4UwxXuQ3
 Pskg==
X-Gm-Message-State: AOAM532yOL97cDe5PHfCStyc7GLbwm5z4hDd3SCAtHST5XNhhTMZQklE
 e7KmBTPdfeoPhNQKEn74rUjFZoQKhbJPsu88pkgCrJ6xIPupVnYH
X-Google-Smtp-Source: ABdhPJyaUo5/8pAMO+rImvZojMftnGDKz35IDQMdVoew1yS276UO3vJMNfKLmkL7kfOMCpSbrXcEZFcNL9AE5q+Qs8M=
X-Received: by 2002:a17:90b:180f:b0:1df:cc0c:bbfd with SMTP id
 lw15-20020a17090b180f00b001dfcc0cbbfdmr9913118pjb.84.1653040989493; Fri, 20
 May 2022 03:03:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <23894515.EfDdHjke4D@phil>
In-Reply-To: <23894515.EfDdHjke4D@phil>
From: Maya Matuszczyk <maccraft123mc@gmail.com>
Date: Fri, 20 May 2022 12:02:33 +0200
Message-ID: <CAO_Mup+SCgeK9rBjYqnnOpJWUNXyJdXV9pjWXqi571sznS9-LA@mail.gmail.com>
Subject: Re: [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_110312_470681_C4CDB747 
X-CRM114-Status: GOOD (  15.16  )
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

SGVsbG8sCgp3dC4sIDE3IG1haiAyMDIyIG8gMjA6MjggSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gbmFwaXNhxYIoYSk6Cj4KPiBBbSBGcmVpdGFnLCAyMi4gQXByaWwgMjAyMiwgMDk6
Mjg6MTcgQ0VTVCBzY2hyaWViIFNhc2NoYSBIYXVlcjoKPiA+IEl0J3MgdjExIHRpbWUuIFRoZXJl
J3Mgb25seSBvbmUgc21hbGwgY2hhbmdlIHRvIHYxMC4gRGlzY3Vzc2lvbiBzZWVtcyB0bwo+ID4g
aGF2ZSBzZXR0bGVkIG5vdy4gSXMgdGhlcmUgYW55dGhpbmcgbGVmdCB0aGF0IHByZXZlbnRzIHRo
ZSBzZXJpZXMgZnJvbQo+ID4gYmVpbmcgbWVyZ2VkPyBJJ2QgcmVhbGx5IGxpa2UgdG8gaGF2ZSBp
dCBpbiBkdXJpbmcgdGhlIG5leHQgbWVyZ2UKPiA+IHdpbmRvdy4KPiA+Cj4gPiBUaGlzIHNlcmll
cyBzdGlsbCBkZXBlbmRzIG9uOgo+ID4gZHJtL3JvY2tjaGlwOiBSZWZhY3RvciBJT01NVSBpbml0
aWFsaXNhdGlvbiAoaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRl
dmVsLzIwMjItQXByaWwvMzQ5NTQ4Lmh0bWwpCj4gPiBhcm02NDogZHRzOiByb2NrY2hpcDogYWRk
IGJhc2ljIGR0cyBmb3IgdGhlIHJhZHhhIHJvY2szIG1vZGVsIGEKPiA+Cj4gPiBTYXNjaGEKPgo+
IEkndmUgbm93IHBpY2tlZCB1cCBldmVyeXRoaW5nIGV4Y2VwdCB0aGUgaGRtaS1yYXRlIHN0dWZm
IGluIHNvbWUgd2F5Lgo+IFRoZSBkcml2ZXIgY2hhbmdlcyB3aWxsIGdvIGludG8gNS4xOSBhbmQg
dGhlIERULWNoYW5nZXMgaW50byA1LjIwLgo+Cj4gSSdsbCBub3cgbW92ZSB0aGUgc2VyaWVzIG91
dCBvZiBteSBmb2N1cyBhbmQgd291bGQgZXhwZWN0IGZ1cnRoZXIKPiBoZG1pIHJhdGUgdm9vZG9v
IHRvIHN0YXJ0IGEgbmV3IHNlcmllcyA6LSkgLgo+Cj4gVGhhbmtzIHRvIGFsbCBpbnZvbHZlZCBm
b3Igd29ya2luZyBvbiB0aGlzLgo+IEhlaWtvCgpXaGF0IGRvIEkgbmVlZCBiZXNpZGVzIHRoaXMg
cGF0Y2ggc2VyaWVzLCBtZW50aW9uZWQgYmVmb3JlIElPTU1VIHJlZmFjdG9yLAphbmQgRFRTIGNo
YW5nZXMgZm9yIE1JUEktRFNJIHN1cHBvcnQgb24gUkszNTZ4PwpJJ20gd29ya2luZyBvbiBtYWlu
bGluZSBrZXJuZWwgc3VwcG9ydCBmb3IgYSBhIFJLMzU2NiBib2FyZCB3aXRoCmEgRFNJIGRpc3Bs
YXkuCgpCZXN0IFJlZ2FyZHMsCk1heWEgTWF0dXN6Y3p5awoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
