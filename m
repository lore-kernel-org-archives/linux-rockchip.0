Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2413C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 20:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I22UVPxlL4QPkVr37g5679cnuA+1MqhT1XoeVlnei0I=; b=przywzk+Zfvw44
	Bu9cm21p/xfVKepTKNAom3oNQIIVVlO7eSIV8+uqMZP+WpErM82+bUqtFSMCzqjRzk8rpCgTfwfeJ
	Xf4uOAv3sbQdU1Taz6vapJ0I8F/0acrurKXglyFk4cYPAP6eKJdZwAIH8LUzHI8yjrps60ZGKSf36
	iRzWgounrA4pLrQ8RWEa4TJVI69L9LKnoIEq2p7n+v3xgdyAdHvJYBW47Lwlb7jR/+e4yy0R7BBsM
	Q3Ct7OsaEpEfHpXrVdBsWoPBn6ra5om2LXhBW8DccCtQzSkNQ6fZ3hSYIjhF5nY6wRnTOrSky5M3E
	lcTHc76eC6nnBBCCBLOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSV5-00000009lHR-0Owa;
	Mon, 15 Apr 2024 20:00:23 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSV0-00000009lFW-2JHa
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 20:00:20 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-518b9527c60so2317299e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Apr 2024 13:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713211216; x=1713816016; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iu4TsmsR0yr+hZlSUf3nbeWPU6VyzUbHeXgBs5JQM8I=;
        b=jcUcUG1lCEy432P2gkd7dE/czuHwhxF7cvBF7Qh4aZkWLFBuvX+r/+7UyjVvX85++J
         685FvYZ1ZtoDMUtnVgsT7FfPPqfaj5OSO7DsZZsvbWiJpMyZGJbL8GH/O7MpNSjbCV+g
         btzc6Tjuej39nViqqvnJgAYL65PnrMaKRVpPXcfQZZ2jRVAZWg3nMF6Ablh4qM9fhVzz
         gkdu1wobNuguvYv6zmmnCzNjeoBHHgx/+6tz6RW9NU2ORjayjRwYvzPeWR6EOSUxU8Ra
         FmXU6q9o1Z9UT0zsWNnSFUnClv9cEk09qt47jJ+4a33S2nJM7qmtsH5b9JN9ymCUzQvC
         u/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713211216; x=1713816016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iu4TsmsR0yr+hZlSUf3nbeWPU6VyzUbHeXgBs5JQM8I=;
        b=F6ftr+KoH18jEVfHXZfjP2SDe6g/s0ltf+XP+sNydQSYWADx6yjTQd+GW7RkKKLnON
         P9pu2eVphgwjkKUSNCTpGuZoYb8vmdW/cuQLjWiZ6aRHszPIfPLpSmjAZscJMmZh3wVG
         8XnP2o2VVk4xjGDLvCfqT6h9L3Pb2PMJ2OgL0ZfBDq9vzxD0dqx5kgFsr+Fs16++6kya
         HNaGtpkc0TiTIYtb5A8MUsjm8/kWivZpQYdlRmUcefJRfQXX5gA51KTc9zS4IXmUFZLa
         A2VAv8jyPSlmc1MEagbwQi9PPiAPVRZqwZzX6IHSlCXINzUwKRMZpQQlmalkZayd3y5A
         iHjA==
X-Forwarded-Encrypted: i=1; AJvYcCWs9vHA6G6CsW30PCOG7ddW/9dutp+SXF9LdO7hP8XUBy2zzwaC4hjQjtlqkRhQQHw+a9/1mNiHqi7Cw52o5InZiYFRCOlm/sgdI9CuyCwbxmvb
X-Gm-Message-State: AOJu0Yxl345uz0sCopcUOrtdMiG9mPNI+a5f6l+nxDkPfU9cGM59oZRZ
	W5r7VSjfPTsra1UTe6up0Wqaa/xW+9uYrJxT/4JX64ILJpLB8ANIb/V/N2Qif5E=
X-Google-Smtp-Source: AGHT+IEg2HPeaum23ALkOp0qFvulXUMO+CauhwOhhqKEHowUZVDqwmA6Yvnmjzgd6CxVDLPgd6HQRg==
X-Received: by 2002:a19:7409:0:b0:519:3ce:a12b with SMTP id v9-20020a197409000000b0051903cea12bmr1612742lfe.23.1713211215573;
        Mon, 15 Apr 2024 13:00:15 -0700 (PDT)
Received: from [172.30.205.18] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g33-20020a0565123ba100b00518b0fdbf60sm706180lfv.258.2024.04.15.13.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 13:00:14 -0700 (PDT)
Message-ID: <b1462fb5-df86-45d9-9f67-697321e2b7dc@linaro.org>
Date: Mon, 15 Apr 2024 22:00:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm/arm64: dts: Drop "arm,armv8-pmuv3" compatible usage
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, soc@kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Tsahee Zidenberg <tsahee@annapurnalabs.com>,
 Antoine Tenart <atenart@kernel.org>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Robert Richter <rric@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "Paul J. Murphy"
 <paul.j.murphy@intel.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <andersson@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?=
 <afaerber@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Jisheng Zhang <jszhang@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-fsd@tesla.com, Michal Simek <michal.simek@amd.com>,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20240412222857.3873079-1-robh@kernel.org>
 <Zh0vXinxy7woerJQ@hu-bjorande-lv.qualcomm.com>
 <CAA8EJpqL2T4bJZqtZ9KF=V2NLnFxUjouA6_Hu_H07DofifZaoQ@mail.gmail.com>
 <CAL_Jsq+q3OLEMT=d8=d9o1D9deKGQ5TAtZg_bgptDPQ1cWcctw@mail.gmail.com>
 <CAL_JsqKSz_WVTTi7+AgjgDzXAnAqaxXM3i2NUv93nZSpyuZK5g@mail.gmail.com>
 <CAA8EJporYZBfDoN6m0Wu2wGqq=Y+TskNCguMOHtDAz05eXS6LA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJporYZBfDoN6m0Wu2wGqq=Y+TskNCguMOHtDAz05eXS6LA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_130018_615913_A66AB29E 
X-CRM114-Status: GOOD (  12.46  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiA0LzE1LzI0IDE5OjQxLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwgMTUg
QXByIDIwMjQgYXQgMjA6MTUsIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+
Pgo+PiBPbiBNb24sIEFwciAxNSwgMjAyNCBhdCAxMjowNeKAr1BNIFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Pj4KPj4+IE9uIE1vbiwgQXByIDE1LCAyMDI0IGF0IDExOjUy
4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo+Pj4gPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4g
d3JvdGU6Cj4+Pj4KPj4+PiBPbiBNb24sIDE1IEFwciAyMDI0IGF0IDE2OjQ2LCBCam9ybiBBbmRl
cnNzb24gPHF1aWNfYmpvcmFuZGVAcXVpY2luYy5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBPbiBG
cmksIEFwciAxMiwgMjAyNCBhdCAwNToyODo1MVBNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToK
Pj4+Pj4gWy4uXQo+Pj4+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNtMjI5MC5kdHNp
ICAgICAgICAgICAgICAgIHwgMiArLQo+Pj4+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
cWR1MTAwMC5kdHNpICAgICAgICAgICAgICAgIHwgMiArLQo+Pj4+Pj4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2RtNjMwLmR0c2kgICAgICAgICAgICAgICAgIHwgMiArLQo+Pj4+Pj4gICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2R4NzUuZHRzaSAgICAgICAgICAgICAgICAgIHwgMiAr
LQo+Pj4+Pgo+Pj4+PiBBY2tlZC1ieTogQmpvcm4gQW5kZXJzc29uIDxhbmRlcnNzb25Aa2VybmVs
Lm9yZz4KPj4+Pgo+Pj4+IE5vdGUsIHdlJ2QgbmVlZCB0byBvdmVycmlkZSBQTVUgY29tcGF0aWJs
ZXMgaW4gc2RtNjM2LmR0c2kgYW5kCj4+Pj4gc2RtNjYwLmR0c2kuIElkZWFsbHkgaXQgc2hvdWxk
IGNvbWUgYXMgdGhlIHNhbWUgcGF0Y2guCj4+Pgo+Pj4gVWgsIHRoYXQncyBhbiBBIGZvciByZXVz
ZSwgYnV0IGFuIEYgZm9yIHJlYWRhYmlsaXR5Li4uIEl0J3Mgc2RtNjMyIGFzCj4+PiB3ZWxsLiBX
aWxsIGRyb3Agc2RtNjMwLgo+Pgo+PiBBY3R1YWxseSwgYXJlbid0IHRob3NlIEtyeW8gY29yZXMg
anVzdCBDb3J0ZXgtQTUzIGRlcml2YXRpdmVzPyBTbyB0aGUKPj4gQTUzIFBNVSBjb21wYXRpYmxl
IGlzIGFuIGltcHJvdmVtZW50IG92ZXIgdGhlIGdlbmVyaWMgb25lIHN0aWxsLiBXZQo+PiBjYW4n
dCBqdXN0IGFkZCBrcnlvMjYwLXBtdSBjb21wYXRpYmxlcyBiZWNhdXNlIHRoYXQgYnJlYWtzCj4+
IGNvbXBhdGliaWxpdHkuIFdlIGNvdWxkIGhhdmUgYSBmYWxsYmFjaywgYnV0IHRoZW4gdGhhdCBp
bnRyb2R1Y2VzIGEKPj4gcGF0dGVybiB3ZSBkb24ndCB3YW50Lgo+IAo+IEkgdGhpbmsgaXQgaXMg
YmVsaWV2ZWQgdGhhdCBHb2xkIGNvcmVzIGFyZSBBNzMtZGVyaXZhdGl2ZXMuCgo4eEE1MyBvbiA2
MzAKNHhBNTMrNHhBNzMgb24gNjM2LzY2MAoKS29ucmFkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
