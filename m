Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9C9FF886F
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 23:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSu68SNZe7+moJa2drYD3R6nkvEXo4VbK2eBxePgoA4=; b=uqGMgG8E9+SVwU
	IvyMlp7FmYGNyd2fE/d8GFz31fodk5CYSomaikW1SJ0Cff67kGtiDp7CvqpsjCc11DK+C8Avor2Hq
	3oTYRYM2ncKIxmRXG5MxQcbDkwbD1Pwi5gslFCwaPFwJfZrsmIJQMB3Yy5Uy/S8Npg2Km+MG9iKJF
	9bdEB4lm7Rx+/ZHZhmqrhWF2wh2d6RMr2bICSujNDo6yT/9t6AaRcSiNV6ymJq/tP9Zrlh9yiykmX
	+AGDwCVLNJFER+weMLqsAGIjXgY3l6TI+yfhSCCbjNBnI/a51exQjDYoZ/63mCgy2/MwJmMjkQIHh
	PsmFvDq+at3x17oeyzhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDf-000000068mF-1UaT;
	Thu, 30 Apr 2026 23:54:59 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDd-000000068kZ-1LwS
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Apr 2026 23:54:58 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-ba8472c1613so254012666b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593292; x=1778198092; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmXN7WSIeoo9s9Ua/S5/Car8IH3Zms7BcEHEOsscCUg=;
        b=jCUnrRfgKnvyfjH3iwyt54UcmXDiFH4uejhKmmn5lG530q7kXN33RETCj9gmWqQjXA
         /DLtwXSSXJ6U+rhtPhvu174cIrJlCGyVbvj4Luy6rtmo4Q5IS9m8AcejVUKQpt2Xxdo6
         hzXWU/MHx9IX4eiPvgTL0h00zZufswnky7vAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593292; x=1778198092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DmXN7WSIeoo9s9Ua/S5/Car8IH3Zms7BcEHEOsscCUg=;
        b=U9SR0UHz6vi7RJrpflwzG8iqY4e2v7NIDqaO6ojB+cg8PTZdklKcTi3NBli8K3yJ+6
         dy+ZlgdRBK/eq/SghIdqtsR8yxTIyJEuEGPmMJK5NpHGSWSo6FsR2oSuqR6BX9smvnf4
         Or7rtjeLUpyJBLv7RSGqO/tZomGZDTPrJHv4JdXqTHCEZ8FNzIBCSNTz9eSEqapNx4mU
         N8Bg4j6lkumNKhAl9vc4NPBkAVvPvuKTCL5qkKcGApVuMQ+NOFbGsH3DgT8J12HyOhXP
         SRx83MEf3bGTo/fNYtH5YK9zD284o8+8LtQmQN9aPaVAA71yYh3QdwI9wQs0d5ArrLDj
         ZqPA==
X-Forwarded-Encrypted: i=1; AFNElJ+PtcSBpcLz+i5BzJvWHYAAbwOkbEEGdnpTvILgzAySsWKiMeUXtKiRSLOlRGXDqDQhWDAYWDt+jNQx+K4LxA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw95uDV9SUIQ3u7ErRFF/ac/ZGftChr0FyifeC3aVFcxpQqHP0Z
	IIuf1oWNIlbrOWkGkJhhIN78WajxZe2X+g3p07TdnZIInjv7RSAkS9JCTs4rGZ5xzu7WRs3u3eV
	GahcVhA==
X-Gm-Gg: AeBDieuQY7j7pUEAPGI7h04Y1GuLw08Gi8DuD1uRTKETGF2awPjQit/c8JSzPsOtbtO
	tZ2EIOCX5h6xcpLqPsWjSNPPVCBRcfysaMA3aKwmPn7bgki82+elHgC4Abp1cezGpMxT4AcipO3
	7N1Bj1ebPUVZTEIC7X7cZxpmwCuXlHAOrxZyeXt8hkHnz5utSOFhPYsc3oblIVszmLE1X9YUKQn
	mwJvVOLnzypZx2HxQ98g6NbSko3QOnBWSmoltAljQJo/fJiRxi0iUooepdQbikD3PLA6D97Gkot
	STWtEMym6ZfDnvOAEHrmDaBO4GU/rfUOjqF2cLi8wD1WTtPKo1p+Zl8jrxnhLL+/2/CuKiTTVeF
	8zz1rzgZXAEk0XpB/I3Ag7+yHF8g93oAs0LreK1kmniDekeyXufBVgAyFjWsTPvoBSs5D4LZioc
	VrxQv38Ydlz5Up/OlB5CFR+asFaFEaSbK57sdnODmNItdmopEp9hepH4Uu3PpgICM0sBiosBT/
X-Received: by 2002:a17:906:4789:b0:bb6:392c:751d with SMTP id a640c23a62f3a-bbebeafe496mr37221666b.3.1777593292533;
        Thu, 30 Apr 2026 16:54:52 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bbe6d97db6dsm47308766b.51.2026.04.30.16.54.47
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 16:54:51 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43eb05b1875so820205f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:54:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/ewkeu6MtIX62prl+8aMLExyenY4vfRHyfXE2ODE8IGlufM6xJbl64476BaqPUBrvvBRwmV54+JhnUj1nN4Q==@lists.infradead.org
X-Received: by 2002:a05:6000:2905:b0:43f:e16f:3cc3 with SMTP id
 ffacd0b85a97d-44a88058b32mr1086350f8f.22.1777593286514; Thu, 30 Apr 2026
 16:54:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-5-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-5-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XrPJwCC3bUJVQJGPwO3HifNOkK4tFd+xwNac_36kHvqg@mail.gmail.com>
X-Gm-Features: AVHnY4IqCV1PxHRIY-OTvaBqqWEOfyPxbcpa8ZWBIyLwROAiOEZ_SsblLMHW3zY
Message-ID: <CAD=FV=XrPJwCC3bUJVQJGPwO3HifNOkK4tFd+xwNac_36kHvqg@mail.gmail.com>
Subject: Re: [PATCH 4/7] ARM: dts: samsung: Add #{address,size}-cells to
 Chromium-based /firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_165457_370680_30B5393F 
X-CRM114-Status: GOOD (  18.22  )
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

SGksCgpPbiBUdWUsIEFwciAyOCwgMjAyNiBhdCAxOjA34oCvUE0gQnJpYW4gTm9ycmlzIDxicmlh
bm5vcnJpc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+Cj4gQ2hyb21pdW0vRGVwdGhjaGFyZ2UgYm9v
dGxvYWRlcnMgbWF5IGR5bmFtaWNhbGx5IGFkZCBhIGZldyBkZXZpY2Ugbm9kZXMKPiB0byBhIHN5
c3RlbSdzIERUQiB1bmRlciBhIC9maXJtd2FyZSBub2RlLiBBIHR5cGljYWwgRFQgbG9va3Mgc29t
ZXRoaW5nCj4gbGlrZSB0aGUgZm9sbG93aW5nOgo+Cj4gLyB7Cj4gICAgICAgICBmaXJtd2FyZSB7
Cj4gICAgICAgICAgICAgICAgIHJhbmdlczsKPgo+ICAgICAgICAgICAgICAgICBjb3JlYm9vdCB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJjb3JlYm9vdCI7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPC4uLj47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgLi4uOwo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPiB9Owo+Cj4gTm90YWJs
eSwgdGhlIC9maXJtd2FyZSBub2RlIGhhcyBhbiBlbXB0eSAncmFuZ2VzJywgYnV0IGRvZXMgbm90
IGhhdmUKPiBhZGRyZXNzL3NpemUtY2VsbHMuCj4KPiBDb21taXQgNmU1NzczZDUyZjRhICgib2Yv
YWRkcmVzczogRml4IFdBUk4gd2hlbiBhdHRlbXB0aW5nIHRyYW5zbGF0aW5nCj4gbm9uLXRyYW5z
bGF0YWJsZSBhZGRyZXNzZXMiKSBzdGFydGVkIHJlcXVpcmluZyAjYWRkcmVzcy1jZWxscyBmb3Ig
YQo+IGRldmljZSdzIHBhcmVudCBpZiB3ZSB3YW50IHRvIHVzZSB0aGUgcmVnIHJlc291cmNlIGlu
IGEgZGV2aWNlIG5vZGUuCj4gVGhpcyBsZWFkcyB0byBlcnJvcnMgbGlrZSB0aGUgZm9sbG93aW5n
Ogo+Cj4gWyAgICA3Ljc2Mzg3MF0gY29yZWJvb3RfdGFibGUgZmlybXdhcmU6Y29yZWJvb3Q6IHBy
b2JlIHdpdGggZHJpdmVyIGNvcmVib290X3RhYmxlIGZhaWxlZCB3aXRoIGVycm9yIC0yMgo+Cj4g
QWRkIGFwcHJvcHJpYXRlICN7YWRkcmVzcyxzaXplfS1jZWxscyB0byB3b3JrIGFyb3VuZCB0aGUg
cHJvYmxlbS4KPgo+IE5vdGUgdGhhdCBHb29nbGUgaGFzIGFsc28gcGF0Y2hlZCB0aGUgRGVwdGhj
aGFyZ2UgYm9vdGxvYWRlciBzb3VyY2UgdG8KPiBhZGQge2FkZHJlc3Msc2l6ZX0tY2VsbHMgWzFd
LCBidXQgYm9vdGxvYWRlciB1cGRhdGVzIGFyZSB0eXBpY2FsbHkKPiBkZWxpdmVyZWQgb25seSB2
aWEgR29vZ2xlIE9TIHVwZGF0ZXMuIE5vdCBhbGwgdXNlcnMgaW5zdGFsbCBHb29nbGUKPiBzb2Z0
d2FyZSB1cGRhdGVzLCBhbmQgZXZlbiBpZiB0aGV5IGRvLCBHb29nbGUgbWF5IG5vdCBwcm9kdWNl
IHVwZGF0ZWQKPiBiaW5hcmllcyBmb3IgYWxsL29sZGVyIGRldmljZXMuCj4KPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMjA5MDkyODA5LkdBMzI0NjQyNEBnb29nbGUuY29t
Lwo+ICAgICBodHRwczovL2NycmV2LmNvbS9jLzYwNTE1ODAgKCJjb3JlYm9vdDogSW5zZXJ0ICNh
ZGRyZXNzLWNlbGxzIGFuZAo+ICAgICAjc2l6ZS1jZWxscyBmb3IgZmlybXdhcmUgbm9kZSIpCj4K
PiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hZUtsWXpUaUwwT0IxeTNnQGdv
b2dsZS5jb20vCj4gRml4ZXM6IDZlNTc3M2Q1MmY0YSAoIm9mL2FkZHJlc3M6IEZpeCBXQVJOIHdo
ZW4gYXR0ZW1wdGluZyB0cmFuc2xhdGluZyBub24tdHJhbnNsYXRhYmxlIGFkZHJlc3NlcyIpCj4g
U2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+Cj4g
LS0tCj4KPiAgYXJjaC9hcm0vYm9vdC9kdHMvc2Ftc3VuZy9leHlub3M1MjUwLXNub3ctY29tbW9u
LmR0c2kgfCA1ICsrKysrCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3NhbXN1bmcvZXh5bm9zNTI1MC1z
cHJpbmcuZHRzICAgICAgIHwgNSArKysrKwo+ICBhcmNoL2FybS9ib290L2R0cy9zYW1zdW5nL2V4
eW5vczU0MjAtcGVhY2gtcGl0LmR0cyAgICB8IDUgKysrKysKPiAgYXJjaC9hcm0vYm9vdC9kdHMv
c2Ftc3VuZy9leHlub3M1ODAwLXBlYWNoLXBpLmR0cyAgICAgfCA1ICsrKysrCj4gIDQgZmlsZXMg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQoKQXMgcGVyOgoKaHR0cDovL2xvcmUua2VybmVsLm9y
Zy9yL2FmRXhtOUhlQi1GTW1QNFBAZ29vZ2xlLmNvbQoKVGhpcyBwYXRjaCBzaG91bGRuJ3QgbGFu
ZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
