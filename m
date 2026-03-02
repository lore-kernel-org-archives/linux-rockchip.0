Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23DD3EA4E1D
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urYtGLr7z2LGpGJKZRLeTkbdZ59qlUhgF9UfagaCvBA=; b=K47i4KEPa52CuO
	4H0LsAjo9xEMTjpXXfSXlNyfERXAw/WovFDlBH9PhtLhulvaOKa+aaeJaL14ouib8LIBhe/rAWVZe
	G8dD+5F1EQPUFU6M1UGm7Njvx/CVdp82QRmHXAdx4y9TGa2+Jbn9fAJKuVbvNKey5+ibdQP1BzTdI
	Uc6OiYcKOWZUgw9VM8BgZl8A6nh8UhwVR12zs5daunqDEveYM9XJ/kshjILfdNcYfH8w+9p87C16q
	+j/iPOiAUPwmetHym3iLYbsWyPMTlWQ7J9Nx0UwYIspcEtLCn2OB/zifHQkm8Odoub6x+dvTzNBX5
	TS45aZdFG15Os1TRpqMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx4sD-0000000DJAV-2Kb7;
	Mon, 02 Mar 2026 15:07:53 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx4sB-0000000DJ9U-1hHd
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Mar 2026 15:07:52 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-64aea64bf15so3888269d50.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Mar 2026 07:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772464070; cv=none;
        d=google.com; s=arc-20240605;
        b=XZrWluffrgXAgFD8aBiaQST7Ez1UKTS+VYt7R7FadGYEM06KQYP9xD9NCC6IyCUBfd
         PVKKvyAPkIOoKKmNcXgy6xxqKUpAGoH4Xp5uzbUJbLaYhl4RFHNpYxXyv6o4DYxnc+1d
         uuX6IQrO3rixjrBpaQhJMOGq3iRvjVQGwOXFUU/W84X2vTsE7vTVwNGIwJEFEF3V/aul
         b8b+8R+deWqReczKvog0VAE7uMmAct+kLYM3M63RlHIstzHRklFMgJvG36kL9xboeJI3
         HbebfsXIlhWEKUjzvfnbRCLrpbVxJOMYXoPyv9VKZP2n3y3Xxu5nMaVQrDOogojzCmid
         Duxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+gDTORrI2pQyWVeOn4meK1oMBrguCe1b/ScMwN2EmY8=;
        fh=btSc6eGTFyLlVMbUORF/mTOJ5GyJnAKf6P+nO/6c2ro=;
        b=dtV0eQiwC7FyM87Az45ROfRTbY9MA0EG8OceKEoOMOOgowLg7zkLakUf/vHhLzOf8i
         Pv+GbnwrRAcu/GgReX0j7vozBVqd8afi26fsKrSnv8vVzMfVLXWc6z+azSOC/i2cb+aT
         pThRViAjQncre6Ovaq2qVuBNhXn4Rms4lz32PXzdGTRPnGD9TejErszmludiyhNm0m5S
         ZbZ21r3eKN0LW7ruck7ULH/m+ryW6AyiL5hoU+m11YIQs/TMBw4L5sfFaBml/WjCn5vK
         ElaxiHndhOzdBL5sUfTnHKONdXWH85F2TizSCJi4viYtQXAHks9vxtpxw7351hJqWHdN
         TRuA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yngvason.is; s=google; t=1772464070; x=1773068870; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+gDTORrI2pQyWVeOn4meK1oMBrguCe1b/ScMwN2EmY8=;
        b=M6VTNzJg7JUgSxFDeMZmK9Bj5vWNXHH20gC5wwzbijylLKcHhcUyZ1rmvt6/UmWZd5
         Rh7iuhpCDry3Ch68RBXjMRqsVS43HC2gGvYtTN3a+UqemVStN0EnFEj5LGQWHkioQK0e
         gWkFfmjePsTrSw5SF9zDR/LHMLkhtKrbWNWRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464070; x=1773068870;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+gDTORrI2pQyWVeOn4meK1oMBrguCe1b/ScMwN2EmY8=;
        b=hgD7ocPSNwikHj6sDnnQTTroAF/Sz0hE9ZK2xJikl61TEpzOLhhS8MArcYl+wAcHjB
         uoGWMYWnNv+PoMtprtLWiURE999O7lZmCydH6fi8O7Pj/+A7LSTnIDtD3NzHUlK7iR2L
         XUCHZNhbes8rjW+fYtvigRUZkl45V8SAoOIIrqTXJjkvUnD4T+Rxf/hwXV3t/wv9KVkc
         9DOAoTnAgw2ExEi8xfNLlCkHTzq3t3lRBxLv1juPdnYut65IlHKQ7sBSUq96qj4YfU4f
         5KrQ/GBTRsZRsAl08QvJVp4gF5dwDlvd6Ne1cm+jyykT0mt1jsxIMnZSplw1U/sRSEfw
         Uc3A==
X-Forwarded-Encrypted: i=1; AJvYcCWEPE37P4V81V1zbSsPwhvM867wVzFSHXUGzZ2Tae4DQuTSW1UKuYlo5jDoBAwfKS7zs15+8XQGtSRHH60ROA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz333eU1Tg3yeVy+9veO91OcLUCh99LPL7toIpnD+UdPwtnoXMi
	Ks2huGilsEYMtm6uKZlyjPwweOKtndV8nnyFHxWs3XCiy9XqP62whInVHCF1l3mcUHOYGljOih+
	tjFLWlXcE7QyQeQze9CUCsxDkwwi9aqYtp9mw9HAkmA==
X-Gm-Gg: ATEYQzynA7hwK5Af6akEidZq372H6sS0IKSozJ2wlW4dO3YNGCo3g9MfRwKeq+uZjK+
	FaDYAiVtt4puDcxX0QO7BZ+hCjNH5zFpLW/Ox+DhiGiyUnKmlUH6H+PGz3BHuTBNA0M6u86s0Sh
	8uupmjwZQP6DkCp2wZB5xIr/ghqpfnrQ5cbQ3A0hYDSw8qQjf53CBY2wnJeTW9qIxI1W2QBBe7F
	cAfd3Hjpz1qy51L1ZSOyZDCQTiGCBSGeRdDNVUlLYWA1HsohoLgLzomNIo3o5MBnpLm/gMIOrnB
	EiOb1u9Fe3nc/6TYMgCvq5DbbwbhaUnHj7vYlP4=
X-Received: by 2002:a53:ab0a:0:b0:64c:c1b6:714c with SMTP id
 956f58d0204a3-64cc2379297mr8671268d50.70.1772464069335; Mon, 02 Mar 2026
 07:07:49 -0800 (PST)
MIME-Version: 1.0
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-2-658c3b9db7ef@collabora.com> <y5ybjitphwydvtcjdtrmpcx7t7hwevjszpktcnmyvjqkgzinmu@hoitkl7lghxh>
 <5081457.31r3eYUQgx@workhorse>
In-Reply-To: <5081457.31r3eYUQgx@workhorse>
From: Andri Yngvason <andri@yngvason.is>
Date: Mon, 2 Mar 2026 15:07:12 +0000
X-Gm-Features: AaiRm531VbuvPlDMvL8ehAEpeh4QP_0yXJbIL2OEHZWnP0es8QNn2W0TYwz5fEU
Message-ID: <CAFNQBQymuv0roy_xupcgU1bHygfBeE3S1FepQYxpobLq8O0yEA@mail.gmail.com>
Subject: Re: [PATCH v9 02/19] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com, 
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	Werner Sembach <wse@tuxedocomputers.com>, Marius Vlad <marius.vlad@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_070751_526323_8D74F35F 
X-CRM114-Status: UNSURE (   9.38  )
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

SGkgTmljb2xhcywKClRoYW5rcyBmb3IgY2FycnlpbmcgdGhpcyBmb3J3YXJkLgoKbcOhbi4sIDIu
IG1hci4gMjAyNiBrbC4gMTI6MzYgc2tyaWZhw7BpIE5pY29sYXMgRnJhdHRhcm9saQo8bmljb2xh
cy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Ogo+Cj4gT24gU3VuZGF5LCAxIE1hcmNoIDIwMjYg
MTc6NDc6NDggQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1lIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4gPiBPbiBGcmksIEZlYiAyNywgMjAyNiBhdCAwODoyMDowN1BNICswMTAwLCBOaWNv
bGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiA+IEZyb206IEFuZHJpIFluZ3Zhc29uIDxhbmRyaUB5
bmd2YXNvbi5pcz4KCk4uYi4gdGhpcyBwYXRjaCB3YXMgb3JpZ2luYWxseSBmcm9tIFdlcm5lciBT
ZW1iYWNoLCBidXQgaXQgaGFzIGdyb3duCmNvbnNpZGVyYWJseSBzaW5jZSBlaXRoZXIgb2YgdXMg
dG91Y2hlZCBpdCwgc28gSSB0aGluayB0aGF0CkNvLWRldmVsb3BlZC1ieSB0YWdzIHdvdWxkIGJl
IG1vcmUgYXBwcm9wcmlhdGUgaGVyZS4KCkJlc3QgcmVnYXJkcywKQW5kcmkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
