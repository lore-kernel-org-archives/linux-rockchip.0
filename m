Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 618BFC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 18:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEMr0V0y2sVNVCEy3omvP5srofrQKllTV0n26FU1Wr4=; b=Z7L1eve8emtmez
	+AfHIXLAPSXQbYpGFjYUCIc5kIr7gQDrxWUQO1L5qJzdQF3SXoj5y00tAFDlOI9NKAEs0P9fbZ5pN
	jtQgkPVlHbETigAz6vrstIxV6DPKF5u9UA04SztTTQ2t4k2+ee/LETWg2Q1UdRje11Ox0M3ZJvH1W
	a8DqmZ1nsFoUbxCtgRjIHXmWdNBZ4ihpXaeJLLLunNu8ZJlNMU/GzcBSQ+/lKEV56gY8MMq1jC8hj
	Fqwn6sVTmZ0Lz0AIt60vKQlw4+qJDn/Ub9WmzQF41faMxCsOvJgYiW5EdpIzxg4nt8CMDfNaRrY0g
	NOLFcsmDUj1mfXoKYoag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGkDr-006dp8-2v;
	Fri, 22 Dec 2023 18:26:11 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGkDp-006doX-1s;
	Fri, 22 Dec 2023 18:26:10 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6ce3281a307so246306b3a.0;
        Fri, 22 Dec 2023 10:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703269566; x=1703874366; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQCbbwN+IZ5AZDdDw8ibn0GB1x1uSwPGN8scwOmeiUI=;
        b=RHrF67+kCh+qct65G31O1FEndAMriRAKHwW2nEi2P9tvjvgPIpbHSTS3/BapHi0a48
         2UwnN3V5r9o0mKCd28yL3bm2rF02Ocx2ys2V0Y5SuecMpuQd3bgZj8IiM/lOuxvr9Nfb
         /iwjfpV9baPI3kP12o43pAILVFhyMODTl2iB23AOKVgIxY6D3dRd0wzl9I3GrdwucQBt
         JDRkysLf7ER0DPNBOSf5OEnKAq4lVBO7VPXJ3Xoe5YpB4cY2BJKWRM7b0eH/CQjL6H/h
         c2DWLwq9YM0fCRKbpS1HAL6PxvEaIVpp0T3hH1/WdcQ6r+znTsm+ZZDm5BYqY64subeM
         HvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703269566; x=1703874366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TQCbbwN+IZ5AZDdDw8ibn0GB1x1uSwPGN8scwOmeiUI=;
        b=RD8LdzSYZStVRpjIUPKv/raQgDnykbOFLsD2VsUA8S2f1H8bsjHyS5NpGPRB85x2pt
         rnw4r8eWaN1b0JCVJlhvq+YTzegL/iVO8Dq7+/1dxgYKv32yT7EUsoyA6STLaUuBYcXy
         z1x3NZhawATqQAlDdxiqawD7scYd4Q4SlxuiyNIyals8aXlpQuu6lMlLndgap07/pvK8
         cnKwzi4dsR/aOP2k/05M/lSYDRpsEIliJ+GlH0il2e9Suj9qIXsVurSn9X0Ms2ALjqWv
         Q20K3KhhMqmlKDjeourv1Em4xRB76bFm/UXfARAvfECEa/XZVDoFZGAHpHoPNkSyL9xL
         Sx9A==
X-Gm-Message-State: AOJu0YwY8R4zsBIubyzI2geAIjN87KeYOwq5uV27NdNduYrD/711bUGj
	uUlqjfZBvjBffwzpV9GA7qht4Y8LSkLtGW5I2wI=
X-Google-Smtp-Source: AGHT+IH5cXRrWZNDyUoWIRpwVuNnU+yNXTGgQDkhlNaQbX4AQ1uo+xOVVl4p+hpKuc4WJ5eJ/3Y8WCkWXh62pdtDPCM=
X-Received: by 2002:a05:6a20:a2a5:b0:18d:4821:f75d with SMTP id
 a37-20020a056a20a2a500b0018d4821f75dmr2871144pzl.4.1703269566543; Fri, 22 Dec
 2023 10:26:06 -0800 (PST)
MIME-Version: 1.0
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net> <20231222-pinetab2-v1-2-e148a7f61bd1@mecka.net>
In-Reply-To: <20231222-pinetab2-v1-2-e148a7f61bd1@mecka.net>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 Dec 2023 15:25:53 -0300
Message-ID: <CAOMZO5DV9Kev8njR5ORhUM+mxSa9WxewB3xNKjEWP4zcuTZtiQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm/panel: Add driver for BOE TH101MB31IG002-28A panel
To: Manuel Traut <manut@mecka.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Segfault <awarnecke002@hotmail.com>, 
	Arnaud Ferraris <aferraris@debian.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_102609_618173_9D50A533 
X-CRM114-Status: UNSURE (   8.40  )
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

T24gRnJpLCBEZWMgMjIsIDIwMjMgYXQgMjozMuKAr1BNIE1hbnVlbCBUcmF1dCA8bWFudXRAbWVj
a2EubmV0PiB3cm90ZToKPgo+IEZyb206IFNlZ2ZhdWx0IDxhd2FybmVja2UwMDJAaG90bWFpbC5j
b20+Cj4KPiBUaGUgQk9FIFRIMTAxTUIzMUlHMDAyLTI4QSBwYW5lbCBpcyBhIFdYR0EgcGFuZWwu
Cj4gSXQgaXMgdXNlZCBpbiBQaW5lNjQgUGluZXRhYjIgYW5kIFBpbmV0YWJWLgo+Cj4gU2lnbmVk
LW9mZi1ieTogU2VnZmF1bHQgPGF3YXJuZWNrZTAwMkBob3RtYWlsLmNvbT4KClBsZWFzZSB1c2Ug
YSByZWFsIG5hbWUgaW5zdGVhZC4uLgoKPiArTU9EVUxFX0FVVEhPUigiQWxleGFuZGVyIFdhcm5l
Y2tlIDxhd2FybmVja2UwMDJAaG90bWFpbC5jb20+Iik7CgpsaWtlIGhlcmUuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
