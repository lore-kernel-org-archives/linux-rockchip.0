Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5729EF06EE
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Feb 2026 22:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQRO4RY3c/pPy/NoHU0UauYHtnUDTrn5PFFZm665sS0=; b=NL0XlIXP6q913d
	NOPqTqgvWyHBZtIU2h7THpKnkgjAzzbbIGth78rrsGjYZnJt7BUO/Ozxb9+7I98Iduxt+nPLNaxIU
	2FHYtJm1eJqRwsKMaQ+3KmhOEJ8zVc1CNzZAD1zK7hJyygbItb+LSvbDzNEC6LCi60XuUaotrSm23
	yTVqXD3ucpBUchVMmxUlIfUFtvnznicHOaPDgfY0kOhAktmTMpw3lMFZil9jHq28uCW7wxpFf8ApA
	ykGETOMmoOHum4ctYi6t/armzbNwNJ3GO9kGO3T/fW5kBDLV773AtETMiK7vRuc+3tLJHtSOmaxeW
	M4F/5bY7i88C3qYUPjuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpDMX-0000000EWkB-0Jzx;
	Sun, 08 Feb 2026 22:34:41 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpDMU-0000000EWj3-064R
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Feb 2026 22:34:39 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-38316445a67so20156241fa.3
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Feb 2026 14:34:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770590076; cv=none;
        d=google.com; s=arc-20240605;
        b=hdJWt6lEjwPPe30AllidUSDxGSa/I35ZMsX4ito7SRvEo+2frM9lpVBI5rwqK8JId5
         zW03oyoVBKVjZvpC+lGq/dqaG+UZqSy9yyyJnd79tLLuzaVD4AdzW0WGmbjsYkFnUH37
         D5CxlJCp7weevOaGZTPd2RAYXy8VaSPubWK47zDfyV79RRPInr1Tc3jSHOi0JTBj2dJf
         ClsMN+0JbUsWcdP//aLQNP4xLzwqg9iJMys/RcdzG6+aU9vrMRu7L7JovXcZan5mp+vq
         bi9FkwbR64UBLcSwlL5KOzvICdcSlPB318KdvH/49rcfabDLk3ga+vtHolfDreaUGAw8
         Wvjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
        fh=QibNMvKAWKZBQn11MPxAF+BmSLxXoGJ6sqa2DNQtEQQ=;
        b=MuNAir6bKa7z/Sa0C73ZNGLAepkVUwsr5qAHuCDtr7eyhtmOaK8P2q3ELUAAr3veVc
         fZWZENdzRVrs5t6KqW69kEZz+PaOIPE4VuV/GCWj62vpUDsGUib6OK49iIKxZvnHBPwl
         ntgCEb2ScZamwpQ4yeU4voBbvvwbH5VLE0b0g728SytVttFrnxIk1vWmEx8ai3iHHju4
         wkzBIxsDDY510/dHsKinFyKCWJEpbVnpPygkwCHXmcNsLgQazr+52F48USRIdynnXcqn
         XU4K45j58N3EBFRHiMk2AIGev+0TL/EW8BgpW35EP9/5Z3P9lsDoBk6Jiw90J0aJG1/8
         aV2Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770590076; x=1771194876; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
        b=bD57hTBxyo40aBBcCiUafn5gjkEIU6kvTQnr/JmtKpo+rCG0KEi61AcJqaYuSt2gP7
         HfoHh5fb6yp6NzYAF/DpVwfFtGdB0mqesrYiD14c0qQA+/NDO44CxTZHnKC+43OFMpgQ
         tfSbLBYi3tDFrrSCaC4QE9rPxnncPGp6aacDENfho64lllxl41uiAuFKjLl8eXLWDt9K
         yL4PAxCiiQeRoJlM7zFyehzNl8nCXr/2qDolI8EexS2L1wAvp+Q45ktjYAzGuQRHoKZz
         prRyorrIX0kUPR5mXAulzpH6JHJ3EZ8Upv4N5CuCB5QvOVnM0aRTB2FZ4reHlkTc+zZB
         BlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770590076; x=1771194876;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
        b=X1Hn6VXfrrQCLMkuQQ9e6Vb1uBYJYy9FeXhDMFB34sSfOspKQ4lww9lBifARVGBAxB
         uNasP0lK9hIyx1FgntC1XvjdjmLMOkPnWxQmrAKoGA8x09gyPJ1P39/RMNuhUZoBDN/z
         x+apKcfYcczrb+n+D01WLyxXFw0uxcMEmh0Gbl7Y3nEb7/dXITSuOORvylGFF/99SLyU
         iqSLsF6gmYudSuVztdMLQv6VeGf+jtYXAa51RF8v5kw/+leiiKjr8dQ1aiPhConPtg0h
         qeLMRKKMSH9KwOiYWELcOI/Trv1NOJ9BvzZUtjC5YtGXC+YJL7eA+acnJXg66Y1Jsodk
         Oaow==
X-Forwarded-Encrypted: i=1; AJvYcCXlmsrD5Ew0eWcsAT2AfFaTJlUYOBEDq+gtL1NoISimKvVqEL5HGNaMDgXxjByPqEyIcUs6jX+0LE2gS1YdXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBmT8Vz2cJOiu1K72frD8y5z8WT0FNd8MoHsUTW1dzm+pzzeju
	FlgDTH+VCvgLMX3gvdW+kOmw93SG5JgJwpJlMVllrvcDx+3F93C1ljHXyerbyV58o4geCdViWdv
	+UioAw2yYj3mzsljtGwDyoLIVHx2p5cTf2w==
X-Gm-Gg: AZuq6aKiEIYKjFZnQeVmrfPN+o9587a92ILew8KYLrHl7wGmFbUghpW13GahQp4ZSkE
	2k2aVfpJ8VdGt7PDMI3e48fzNQGeIbiagZqpX2aXulxOJ0Bryts8oLHC4pZCVDOx9RdSpADy4rF
	EwuLD0H7X9sdTbo9vXybaGH+XB4wzoivtjg0lCktEnpYBcj2euud33T6UFbOO+t37DnKQILv8Wa
	ZU5HVwbQCZil7hr11VRCd2c9aAFy/OS+T7hncKG8JeH6FInEwBlRpSudE/YokosyKO+D58dDsB/
	lAou7LnHFSdMawVPDvtPTFzimaQ=
X-Received: by 2002:a2e:b88d:0:b0:333:e590:1bc9 with SMTP id
 38308e7fff4ca-386b50f9d0cmr29580661fa.24.1770590075494; Sun, 08 Feb 2026
 14:34:35 -0800 (PST)
MIME-Version: 1.0
References: <20260207131803.2834749-1-festevam@gmail.com> <20260207131803.2834749-4-festevam@gmail.com>
 <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se> <CAOMZO5CmKzrcaVdp6Su+F+uT+nAueroaJcBkKtO3O8N0MWZt6A@mail.gmail.com>
In-Reply-To: <CAOMZO5CmKzrcaVdp6Su+F+uT+nAueroaJcBkKtO3O8N0MWZt6A@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Feb 2026 19:34:24 -0300
X-Gm-Features: AZwV_QgSxOCFNJYNoGzR93g_6Vr5IQZIKS3xjaEKp5qzU_JlAOUnmsGAPuX2SpA
Message-ID: <CAOMZO5A8D=q7+6YFfCNk87LfY4k3XT-xKnB=2CbCjLaT6VCWag@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_143438_084934_342A3499 
X-CRM114-Status: GOOD (  10.00  )
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

SGkgSm9uYXMsCgpPbiBTdW4sIEZlYiA4LCAyMDI2IGF0IDc6MjDigK9QTSBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgSm9uYXMsCj4KPiBPbiBTdW4sIEZl
YiA4LCAyMDI2IGF0IDc6MTXigK9QTSBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+IHdy
b3RlOgo+Cj4gPiBBbSBJIGNvcnJlY3QgaW4gdGhhdCB0aGlzIGlzIHRoZSBPbWVnYS00IEV2YWx1
YXRpb24gQm9hcmQgKEVWQikgWzFdIGFuZAo+ID4gdGhhdCB0aGUgT21lZ2EtNCBpcyBhIFN5c3Rl
bS1vbi1Nb2R1bGU/Cj4KPiBObyBTb00gaXMgdXNlZCBvbiB0aGUgT21lZ2E0IGJvYXJkLgoKQWgs
IEkgdGhvdWdodCBpdCB3YXMgYSBTaVAsIGJ1dCBkb2N1bWVudGF0aW9uIHNheXMgU29NLCBzbyBJ
IHdpbCBkbwp0aGUgc3BsdCBhcyB5b3Ugc3VnZ2VzdGVkLgoKVGhhbmtzLAoKRmFiaW8gRXN0ZXZh
bQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
