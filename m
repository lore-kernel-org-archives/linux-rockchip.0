Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97291FF886F
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 23:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGzk5uYNNuo6+VcYWWI5G0QSuJUs8XF+TxPtaAQ9Qso=; b=EK3gDbQy/2SVJg
	fGQZSenzofL3tocixMmBbws59y7hR5Kjk/+DN+rGfS3Az24kyTtVSwN58ZDiDUwIO2tXcfnUTcfG0
	aSpgDa2o4YXQ4Zt3u3yKf+Lphc8e9bgKZkqinwp4D6jwU7GYf4bI6wQz6TXK7XOXzlLqOEAHv22RJ
	FWusA7+NofIZVfLWme+9unMRwv6/lh0+IojphWgCq6SXJDMMdSV9w1xMJdPybPTk7thx/fWgyEpUT
	Cmfa20VxYPISzwP2EBBco06MRabSgySs9duHlYnFvazrnYrGek8lrh0h6qW+lhJKmACiIlphNHCfV
	j8m2CTHw4S7ivLEHe2Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDv-000000068tQ-1tDA;
	Thu, 30 Apr 2026 23:55:15 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDt-000000068rC-0GkB
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Apr 2026 23:55:14 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-676d8582a13so2701860a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593309; x=1778198109; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+mZxHBvv1WgYnS9amllda9wyu/ABf+laADAiAQpVXA=;
        b=W0PYPtgMzApLmBcKMpthj7TKqh3Ii56QKV173fhBRDwhWVR3MWO1YMcITzydkqrTxk
         VSrPEmRBk9iixvylJU4BJbnVB+KXSG/tvMapF3C0UMGPHMxGBYrjstBvDGAuos+qzKzz
         5lSr6tgxBDLiQtZw+fVj8dwftZTKvSVNmfgwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593309; x=1778198109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6+mZxHBvv1WgYnS9amllda9wyu/ABf+laADAiAQpVXA=;
        b=JKNR1mQoDtI3K1E5Oywm79kmBgPQ6UX0xN3jYiG6zax7RGbhP/E28rhYVEQ316E4WQ
         jvtuynZIkjVpTx8IMyZ/ls3bOdqLpcIMUgRhEzAGoLRdiVk2OGXtWkwbFGEfyyqCB9bp
         FLx8aH5a/mp76/5G1ovVzWcAXAVj+gcXdyOMiDQqfiZJip5Ncky8j07jeJmt7EpT0OKD
         4KMDsKMkpTJoGZVIrQrREEPvhrkiZQM5lrIFQWCEgqi3rS2SBzhbQPFhYMtlxFxaqEYg
         dEm61gFyJ9/ymUhnCrs5EQ65z9nqkEaZdjG1jUwbib9LX0DdScjkdUWfAKetqTKjSiE/
         vn7A==
X-Forwarded-Encrypted: i=1; AFNElJ8NZUb40eXnv7YgDZXA/fuoQX0r8FllgH5dUtw7vJtb298pWjut6UpHS+uldRqo0/CoJP6Y72q30wcd4sgwfg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+0spZ1QXqQjzLhBmXENA9b/BqhCa4WT+7OJhjO7tYHwKKvYg/
	rO9rr5nbaDT5IhXZE3ezDTAV7fHmtxSwNWq5r9SzOHBy+DE9q64+Tz25ELPqi1NcQKdacOmGpuW
	fJ43Wvw==
X-Gm-Gg: AeBDiesP0UI4DdknhspoUFNut/1M6qI/GfjnkA6Td4hhXdOmvad4/XlAYZtpRHWomKP
	Gi4EaD/GVUMSDaNn92Sx1DTJHJyGB2emN1VRBMv5/uilgjEycSW0FEGPytiBSGDUO57uWu4fSN+
	r3jfvx3Pf9GcjslqDl4NOEbD3gxGhvtgeH6Y3SRKjIORygkY1hg8sKihY00WCsw7YHAtJF5YX7y
	X3PQuYEcKpkvcUJnNKMSpPRURMvhWcNR3AHMFMRSG84TOAhu699GV6tQtr2LH9PuqTLnPW3RZSZ
	YXKIjxAi4tVnT7WoqMKCotp4rBq2BKuU2sZOuAQrc7D0xeYiQOpoqM22mDeh8Z4PoW+MLVi911B
	33/Lvf7O3hcC/OFaValDT2Fry3E91xlCIe0XQB8rpraPnR8O8xMuOWWPPLPT2aH+mYPHh0fSyL8
	DbKOxkBHMKHCA+5nNxJl55l3LLfxU3m81FspZxi1uqsF2pwkGhdeUY+JPRcADbUKSPpvVZBRG8
X-Received: by 2002:a17:907:c1a:b0:bad:ad5:300a with SMTP id a640c23a62f3a-bbac67c27acmr357067266b.26.1777593308932;
        Thu, 30 Apr 2026 16:55:08 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bbe69f6b7f6sm49756866b.3.2026.04.30.16.55.01
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 16:55:08 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-488ff90d6c7so14128285e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:55:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+HbGB2FMl6LS69zEQ+Ct5qXY7Q67kKTWAoaMhhitODHcdKbc9IDwhX1sdin3vYvYU/bqOBLvqvQxY6xye+UQ==@lists.infradead.org
X-Received: by 2002:a05:600c:8483:b0:487:2671:fb8f with SMTP id
 5b1f17b1804b1-48a83d73324mr83882365e9.8.1777593300707; Thu, 30 Apr 2026
 16:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-7-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-7-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Whp6JADcVOZ11Jr=5THGrCe9cWZhX0ye54wQ84GtUOwg@mail.gmail.com>
X-Gm-Features: AVHnY4Jn8yjvVDQMrk9sfxS2s1IXmKHM3MKByZAYOfzP-smNW0WjILYj0XY4G5A
Message-ID: <CAD=FV=Whp6JADcVOZ11Jr=5THGrCe9cWZhX0ye54wQ84GtUOwg@mail.gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: nvidia: Add #{address,size}-cells to
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
X-CRM114-CacheID: sfid-20260430_165513_139681_1125BE84 
X-CRM114-Status: GOOD (  17.53  )
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
LS0tCj4KPiAgYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmExMzItbm9ycmluLmR0cyB8
IDUgKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmEyMTAtc21hdWcuZHRz
ICB8IDUgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpSZXZpZXdl
ZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
