Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19033EF06EE
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Feb 2026 22:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayPslpelBBXwsZg7X74Td70FHDgK0Ze1vzF7We/BIMo=; b=vQ65B/x4y7e0u3
	bjMSzGzYMkIdPKIBkWGO2WzXV8mMU7fb+2tRrHCkhXwpdEORw9DE2RcdoKslvPPExJ5NrgtfUTUpQ
	oioGLLG+4Xfr9KtdOs2g9qgCOTwazIPjuZyC6nd5QwGjOy7XyTn/eA/+qdmJo6b9qzoLkC4GQEic+
	uAbb3R7Nbx0V0VOSVqgzQnxSKh5kZ5e24zsnoNToEbn0Yrg7V+4OCGsdZIFiggbPnNliW1f/J25SG
	PAVJfP/JamdTUmb1i2FXCcldxxQt3EtbHLrhQ3VgmfaxdnW00kl0WqNcg2tYgfNiMJuuC5pI/eYIW
	hdL0UAjDZnm89r0DzUsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpD90-0000000EW5r-01kW;
	Sun, 08 Feb 2026 22:20:42 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpD8w-0000000EW53-3OV3
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Feb 2026 22:20:40 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-382fe06a9c4so19398971fa.2
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Feb 2026 14:20:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770589236; cv=none;
        d=google.com; s=arc-20240605;
        b=V/49QxMN6AkOCJl/dR0hfqTWT9kxk3jgVFeauYJnHMPXwTJPIzXh738qu/WFr1XpBz
         mbI83pXRIuCZ4ftJIjgcogmiiPmifVjU46jZJo+xr0D459/FPTGk5wd0ECxxTBYty2sw
         QblQ7fe/+hwvPNVom9bKlY50mN6CboVypr+2+wRpjOfRq4wFLNJTG1/HFT/L4hMuFlKl
         Tf/TjHgw7mkzzExLiqDLtLsBt7jy+vAMEDKrAuTES1yvoCLHB8zLbCPfqmg8y9b2sCyR
         CMyysWi/3swSoJTnQZXoy/rEh535kr8319BD8Mxskh+00Skr/08UPIRlewQhSOHUEM3X
         whTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
        fh=9dhIvO+dGtX0/zktCDriFjMHj9Q/bXliAT9QBjn9cVo=;
        b=ZFRzo3IZe5K4t6GhBn/1VB/tWLms+MDyi8n/32mRs6b776DnVKBd9FwcOltjq4OsEa
         JUai20zlY13rBXXF0eulpFUGmuuXdrp8O8YBbyY34ZPFqI73Js8vrOQHGCvf1cZHn+d/
         PMioxo84aJ6ibUGrrikIJvi0vg4mzAhzNiemcaM1jYKbyg+lPs3fXJqNT1mEDkj0DPt6
         iq7ujRFi22yTt5eVf6rZiVMWExDrmGrMBWKmgjC3MFSZg+FyRjN2gNV3IjR6SFXfnSXu
         rU7UTaz4JQTJ7nDyat2XYhr5wchvOPcSctZaqlWlWQe90s1ILFh/OpEjDXL917PlXNA0
         rNNQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770589236; x=1771194036; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
        b=G+M6OvwuRqtelmqqe5n/e/LRbc38jX5//yt2wmJgOdAZU+N03F5IuY5hcPK22ZDCdM
         AmgxmAOzzB00qwuv4uXA9QP4/0RojGHKuar7dfxP9uqIVqlvIFwDYgA8aegWWoG3WaIt
         Tw+O8dwlAMx9GaOXRWeiY8yyOxf8JsfCVLXATd6UKiZW7ceD1BBI7F+Tw4zGDF/9e3Cj
         uqCQ0GS/us9OW++j/UOzqwpNJCoQcF3JkYX7ZSAL+OFvcqkkrfdeKiUzU8IYhFK1ojHW
         RqZcMQDqAD8fs0qrucMc+mPQcDuwj3ujj5UrhXWzMDcIEgn3MI4WaBmrQ0uU3bE+ZGrR
         nb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770589236; x=1771194036;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
        b=JlfdBalEz/PEBzG7YVHtcc5aiynVKS97Q96ayIjBGcEKKFPLzq/BmgquE8WOaOXKvm
         zpVmCg/Dze/mlIs0SAgs7xcOb38Y5iDLWEsvwOCRnwUDApbzS45r9eE/DDXG4PXB3sV4
         EuYDYNyqMhL4e0Qc6XGsqrIKaP/lK+VQt5MEM4Y8CO1e7loTavulkt/4EC68UisCrc/4
         A3LU+qLi1tKSk5lql/rSu6v+SfU7BVGjChvwXlMWf0OIOh9b3VonVtUKNJR2/eiUIxAA
         1kaALhElI3HLZvKFQQmFS+FE+Dqt1jW0DXRRmRZJwzS2KuNLpmEU24sn4mO9i3OJsnap
         bo8w==
X-Forwarded-Encrypted: i=1; AJvYcCUSujU2hgDPo1Ny/MBsLVKO2g8rK1BD3TEwsDq4wyFyrGlXQ9OODd/1dc9kDNYtVs5FF0bYSRqNQKfTtHGITA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzg5P2Eu56tHPY0kRwj0vaNuR5/UiqTbGxJNrb4dGXz1Uws1ah4
	zNeF4oILFEa2hYJfPuu7JutljDBaVkTeAEZhvombmwWu/Y4NH77lPhi/Vzf3lmvVcVpnTxXZbGL
	cR7KKD2KGGccOuv6Z9kxXCWtdiaW/cEKJmg==
X-Gm-Gg: AZuq6aK6wgkxeJnij8ZfoXpPgz1DZJbLlQTJFBmbrNwTu1wdtudQbxU9hwa2lHHs9C5
	gst881OFa28mO/UWYYxgs0eJYTu5wR0byd5xoB0jqSQ094d/0lWDO6eU8aWZKQDyYbf4kUmdL9r
	bxRL/8pk7NnYEiSlLZW1Qk3nx9hUjBNaFABg/Hj02eWoeXifjeJ1wkFes1DLI90mzSlK0T9M/YN
	P8iCX4nY+Cj2H7HqZd9lBR4TonRSh83bTeiKG95QRlH60Hads7ZyaGMDrXJgxahib2F76vycUrT
	oHw/YptIjrT9AKKznm2OehfUGlI=
X-Received: by 2002:a05:651c:f06:b0:385:beca:f6dd with SMTP id
 38308e7fff4ca-386b517f034mr27231951fa.43.1770589235643; Sun, 08 Feb 2026
 14:20:35 -0800 (PST)
MIME-Version: 1.0
References: <20260207131803.2834749-1-festevam@gmail.com> <20260207131803.2834749-4-festevam@gmail.com>
 <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se>
In-Reply-To: <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Feb 2026 19:20:24 -0300
X-Gm-Features: AZwV_Qic1qNN5-FtSKayD_BHH8s4MiBnriT3eLhue_QE2OzlTzJvDwiSSLFVTIg
Message-ID: <CAOMZO5CmKzrcaVdp6Su+F+uT+nAueroaJcBkKtO3O8N0MWZt6A@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_142038_856217_80012F80 
X-CRM114-Status: UNSURE (   7.45  )
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

SGkgSm9uYXMsCgpPbiBTdW4sIEZlYiA4LCAyMDI2IGF0IDc6MTXigK9QTSBKb25hcyBLYXJsbWFu
IDxqb25hc0Brd2lib28uc2U+IHdyb3RlOgoKPiBBbSBJIGNvcnJlY3QgaW4gdGhhdCB0aGlzIGlz
IHRoZSBPbWVnYS00IEV2YWx1YXRpb24gQm9hcmQgKEVWQikgWzFdIGFuZAo+IHRoYXQgdGhlIE9t
ZWdhLTQgaXMgYSBTeXN0ZW0tb24tTW9kdWxlPwoKTm8gU29NIGlzIHVzZWQgb24gdGhlIE9tZWdh
NCBib2FyZC4KClRoYW5rcyBmb3IgdGhlIHJldmlldyEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
