Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B93FC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 13:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWiE2PnsZEf6/1N/yBeS0pEFFYPJTw4zmp5Oybh65b8=; b=OqocMtvytEid5I
	WXyAIKuuQcBFyF7pR6H3rdGB1bzBuOvwNtxMCGBGhpzIcGv/T+6jYi0u+xjWqAwv5y0WASxdu+M6/
	38621BNmKeDxoLIX5hMzVA5MqGkws+ezpuE1e4avXNj+ICmQ65iXGoHKw1hx9dkbgyboSDg1FN/vK
	Os2J6/lguJbjreUnV8uNdqMA519MGVzDEJCcGZZQDSrVUGRYY04xK61SBrnYhtONB9+wo7TKGmyuh
	SlaqdDMFYt3wK6/9/X3rQZ4GWcXh/Lk/TdxCwktq1woXqABdJ8fiirPjVzrb24XcpPm+uH27j2WBa
	TOSpRLt9j0yNu1NidUWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJ9V-002yrZ-2l;
	Thu, 21 Dec 2023 13:31:53 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJ9R-002yoX-1d;
	Thu, 21 Dec 2023 13:31:51 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a2698cff486so95926166b.0;
        Thu, 21 Dec 2023 05:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703165506; x=1703770306; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4clTO1fofY2eNwbdO7CCLGOSVGvP1DX7gqJc9G4CyF8=;
        b=kP/+cp0y+jhBXFl6sob2yOBkFlix+bRfiy+9LKL8aMJzuGDrsSy8QkW8yjFiywhZJu
         alHbp/T1+LcLygiKNaWyeAKMN1MHs4gRv6BlitNLjhxDtdyGmCwSF9qJNYXyeJ575lUd
         VO9egA9sjqw9E+V4ApJORsF9jxlfAgVH9lKJCPn3Syt93tFDoRtYdqQVFrSsEQr5TF/z
         fFkuozer85Q/S1GWY9B72SNslxJf7cK8wNG0d23ZxwOH/bayVURQ6YurMimu4NSc577P
         eZrxmXbHmAyhAQbCMFGQwnqta6vjwZlQtbLfudIk1rywLcI99rka6msW/SRVM4ty30rx
         vT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703165506; x=1703770306;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4clTO1fofY2eNwbdO7CCLGOSVGvP1DX7gqJc9G4CyF8=;
        b=ErXNPtsXqnSTxx8Gw4FoheINmnWibD6g7s3yjoPCa1JTIHNV4R3YEjFEcPRw1r488N
         lQ7wfwTQ/nwC68oSrKleVle7qyf6YPgLw0/C71AzC89X76cDzrHU9o4gWXnAPBWP91JN
         4CsFUEXFifAri+7gt7Bu4NIhFnQz2Fst21+bleKCEWkZicBHbAZRs1UeWwhs6cHPm8h5
         48YFlwMb+7p7D1n+GhLHgcYi+CyFrq/23S3xIcJym6pfwVH1m7WWWsda+JXgSd7E74t3
         GpndOWMh67kkvzHSoy4tdQPrqTIT/5QNsdwJraDRQF/EYFOE5cN+vxdq37ukJbnQJ7rb
         SJbA==
X-Gm-Message-State: AOJu0YxUkgQbiiLdRCrado8RjZsezKMyaQnKiRNIevZoX6qe5Ang9Iwt
	6gp6i+RhUwrCJAfJCQ23Kw==
X-Google-Smtp-Source: AGHT+IF2Flfwdw+9Ew7PdPcxSqRYmVIgFYsU4nOcYmBTEXLMsfQ7N0ayOXW8rHLLhgaxT1AapyUWvw==
X-Received: by 2002:a17:906:6d58:b0:a23:4532:f168 with SMTP id a24-20020a1709066d5800b00a234532f168mr1881887ejt.227.1703165505503;
        Thu, 21 Dec 2023 05:31:45 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0? ([2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0])
        by smtp.gmail.com with ESMTPSA id hj13-20020a170906874d00b00a233515c391sm953856ejb.158.2023.12.21.05.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 05:31:45 -0800 (PST)
Message-ID: <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
Date: Thu, 21 Dec 2023 14:31:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
Content-Language: en-US, de-DE
To: Hugues FRUCHET <hugues.fruchet@foss.st.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-media@vger.kernel.org, Alexandre Torgue
 <alexandre.torgue@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <769a1510-f8d2-4095-9879-42f413141dee@gmail.com>
 <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_053149_561373_16A07B12 
X-CRM114-Status: GOOD (  22.91  )
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

SGkgSHVndWVzLAoKQW0gMjEuMTIuMjMgdW0gMTQ6MDggc2NocmllYiBIdWd1ZXMgRlJVQ0hFVDoK
PiBIaSBBbGV4LAo+Cj4gVGhpcyBpcyBiZWNhdXNlIFZERUMgYW5kIFZFTkMgYXJlIHR3byBzZXBh
cmF0ZWQgSVBzIHdpdGggdGhlaXIgb3duIAo+IGhhcmR3YXJlIHJlc291cmNlcyBhbmQgbm8gbGlu
a3MgYmV0d2VlbiBib3RoLgo+IE9uIGZ1dHVyZSBTb0NzLCBWREVDIGNhbiBzaGlwIG9uIGl0cyBv
d24sIHNhbWUgZm9yIFZFTkMuCj4KSSB0aGluayB0aGF0J3Mgd2hhdCB0aGUgZHJpdmVyIGlzL3dh
cyBkZXNpZ25lZCBmb3IgOikKCkkgZG9uJ3TCoCB0aGluayB0aGVyZSBfaGFzXyB0byBiZSBhIGxp
bmsgYmV0d2VlbiB2YXJpYW50cyBpbiB0aGUgc2FtZSBmaWxlLgpGb3IgUm9ja2NoaXAgd2Ugb25s
eSBoYWQgdGhlIGlzc3VlIHRoYXQgdGhlcmUgX2lzXyBhIGxpbmsgKHNoYXJlZApyZXNvdXJjZXMp
IGJldHdlZW4gZW5jb2RlciBhbmQgZGVjb2RlciBhbmQgdGhleSBoYWQgKGZvciB0aGF0IHJlYXNv
bikgdG8gYmUKZGVmaW5lZCBoYXMgYSBfc2luZ2xlXyB2YXJpYW50LiBBbmQgdGhlcmUgaXMgbm8g
cmVhc29uIHlvdSBjYW4gc2hpcCBkZWNvZGVyCmFuZCBlbmNvZGVyIHNlcGVyYXRlZCB3aGVuIHlv
dSBoYXZlIHR3byB2YXJpYW50cyAod2l0aCBkaWZmZXJlbnQKY29tcGF0aWJsZXMpLgpGb3IgUm9j
a2NoaXAgYW5kIGlNWCB0aG9zZSBmaWxlcyBhcmUgZXZlbiBjb250YWluaW5nIHZhcmlhbnRzIGZv
ciBjb21wbGV0bHkKZGlmZmVyZW50IGdlbmVyYXRpb25zIC8gZGlmZmVyZW50IFNvQ3MuIEkgaGFk
IHRvIGNsZWFudXAgdGhpcyBtZXNzIGZvcgpSb2NrY2hpcCBvbmNlIC0gYW5kIGl0IHdhcyBubyBm
dW4gOikgQW55d2F5czogSXQncyB1cCB0byB0aGUgbWFpbnRhaW5lcnMgSQpndWVzcyAtIEkganVz
dCB3YW50ZWQgdG8gYXNrIGlmIEkgbWlzc3VuZGVyc3RhbmQgc29tZXRoaW5nIGhlcmUuCgpHcmVl
dGluZ3MsCgpBbGV4Cgo+IEhvcGluZyB0aGF0IHRoaXMgY2xhcmlmeS4KPgo+IEJlc3QgcmVnYXJk
cywKPiBIdWd1ZXMuCj4KPiBPbiAxMi8yMS8yMyAxMzo0MCwgQWxleCBCZWUgd3JvdGU6Cj4+IEhp
IEh1Z3VlcywgSGkgTmljb2xhcywKPj4KPj4gaXMgdGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbiBJ
J20gbm90IHVuZGVyc3RhbmRpbmcgLyBzZWVpbmcgd2h5IHRoaXMgCj4+IGlzIGFkZGVkIGluIHR3
byBzZXBlcmF0ZSB2ZGVjKiAvIHZlbmMqIGZpbGVzIGFuZCBub3QgYSBzaW5nbGUgdnB1KiAKPj4g
ZmlsZT8gSXMgaXQgb25seSBmb3IgdGhlIHNlcGVyYXRlIGNsb2NrcyAoLW5hbWVzKSAvIGlycXMg
KC1uYW1lcykgLyAKPj4gY2FsbGJhY2tzPyBUaG9zZSBhcmUgZGVmaW5lZCBwZXIgdmFyaWFudCBh
bmQgcGVyZmVjdGx5IGZpdCBpbiBhIAo+PiBzaW5nbGUgZmlsZSBob2xkaW5nIG9uZSB2ZGVjIGFu
ZCBvbmUgdmVuYyB2YXJpYW50Lgo+Pgo+PiBBbGV4Cj4+Cj4+IEFtIDIxLjEyLjIzIHVtIDA5OjQ3
IHNjaHJpZWIgSHVndWVzIEZydWNoZXQ6Cj4+PiBUaGlzIHBhdGNoc2V0IGludHJvZHVjZXMgc3Vw
cG9ydCBmb3IgVkRFQyB2aWRlbyBoYXJkd2FyZSBkZWNvZGVyCj4+PiBhbmQgVkVOQyB2aWRlbyBo
YXJkd2FyZSBlbmNvZGVyIG9mIFNUTWljcm9lbGVjdHJvbmljcyBTVE0zMk1QMjUKPj4+IFNvQyBz
ZXJpZXMuCj4+Pgo+Pj4gVGhpcyBpbml0aWFsIHN1cHBvcnQgaW1wbGVtZW50cyBIMjY0IGRlY29k
aW5nLCBWUDggZGVjb2RpbmcgYW5kCj4+PiBKUEVHIGVuY29kaW5nLgo+Pj4KPj4+IFRoaXMgaGFz
IGJlZW4gdGVzdGVkIG9uIFNUTTMyTVAyNTdGLUVWMSBldmFsdWF0aW9uIGJvYXJkLgo+Pj4KPj4+
ID09PT09PT09PT09Cj4+PiA9IGhpc3RvcnkgPQo+Pj4gPT09PT09PT09PT0KPj4+IHZlcnNpb24g
NToKPj4+IMKgwqDCoCAtIFByZWNpc2UgdGhhdCB2aWRlbyBkZWNvZGluZyBhcyBiZWVuIHN1Y2Nl
c3NmdWxseSB0ZXN0ZWQgdXAgdG8gCj4+PiBmdWxsIEhECj4+PiDCoMKgwqAgLSBBZGQgTmljb2xh
cyBEdWZyZXNuZSByZXZpZXdlZC1ieQo+Pj4KPj4+IHZlcnNpb24gNDoKPj4+IMKgwqDCoCAtIEZp
eCBjb21tZW50cyBmcm9tIE5pY29sYXMgYWJvdXQgZHJvcHBpbmcgZW5jb2RlciByYXcgc3RlcHMK
Pj4+Cj4+PiB2ZXJzaW9uIDM6Cj4+PiDCoMKgwqAgLSBGaXggcmVtYXJrcyBmcm9tIEtyenlzenRv
ZiBLb3psb3dza2k6Cj4+PiDCoMKgwqDCoCAtIGRyb3AgIml0ZW1zIiwgd2Uga2VlcCBzaW1wbGUg
ZW51bSBpbiBzdWNoIGNhc2UKPj4+IMKgwqDCoMKgIC0gZHJvcCBzZWNvbmQgZXhhbXBsZSAtIGl0
IGlzIHRoZSBzYW1lIGFzIHRoZSBmaXJzdAo+Pj4gwqDCoMKgIC0gRHJvcCB1bnVzZWQgbm9kZSBs
YWJlbHMgYXMgc3VnZ2VzdGVkIGJ5IENvbm9yIERvb2xleQo+Pj4gwqDCoMKgIC0gUmV2aXNpdCBt
aW4vbWF4IHJlc29sdXRpb25zIGFzIHN1Z2dlc3RlZCBieSBOaWNvbGFzIER1ZnJlc25lCj4+Pgo+
Pj4gdmVyc2lvbiAyOgo+Pj4gwqDCoMKgIC0gRml4IHJlbWFya3MgZnJvbSBLcnp5c3p0b2YgS296
bG93c2tpIG9uIHYxOgo+Pj4gwqDCoMKgwqAgLSBzaW5nbGUgdmlkZW8tY29kZWMgYmluZGluZyBm
b3IgYm90aCBWREVDL1ZFTkMKPj4+IMKgwqDCoMKgIC0gZ2V0IHJpZCBvZiAiLW5hbWVzIgo+Pj4g
wqDCoMKgwqAgLSB1c2Ugb2YgZ2VuZXJpYyBub2RlIG5hbWUgInZpZGVvLWNvZGVjIgo+Pj4KPj4+
IHZlcnNpb24gMToKPj4+IMKgwqAgLSBJbml0aWFsIHN1Ym1pc3Npb24KPj4+Cj4+PiBIdWd1ZXMg
RnJ1Y2hldCAoNSk6Cj4+PiDCoMKgIGR0LWJpbmRpbmdzOiBtZWRpYTogRG9jdW1lbnQgU1RNMzJN
UDI1IFZERUMgJiBWRU5DIHZpZGVvIGNvZGVjcwo+Pj4gwqDCoCBtZWRpYTogaGFudHJvOiBhZGQg
c3VwcG9ydCBmb3IgU1RNMzJNUDI1IFZERUMKPj4+IMKgwqAgbWVkaWE6IGhhbnRybzogYWRkIHN1
cHBvcnQgZm9yIFNUTTMyTVAyNSBWRU5DCj4+PiDCoMKgIGFybTY0OiBkdHM6IHN0OiBhZGQgdmlk
ZW8gZGVjb2RlciBzdXBwb3J0IHRvIHN0bTMybXAyNTUKPj4+IMKgwqAgYXJtNjQ6IGR0czogc3Q6
IGFkZCB2aWRlbyBlbmNvZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+Pj4KPj4+IMKgIC4uLi9t
ZWRpYS9zdCxzdG0zMm1wMjUtdmlkZW8tY29kZWMueWFtbMKgwqDCoMKgwqDCoCB8wqAgNTAgKysr
KysrKysKPj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpwqDCoMKg
wqDCoMKgwqAgfMKgIDEyICsrCj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAy
NTUuZHRzacKgwqDCoMKgwqDCoMKgIHzCoCAxNyArKysKPj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vS2NvbmZpZ8KgwqDCoCB8wqAgMTQgKystCj4+PiDCoCBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL01ha2VmaWxlwqDCoCB8wqDCoCA0ICsKPj4+IMKg
IC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmPCoMKgIHzCoMKgIDQg
Kwo+Pj4gwqAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5owqDCoMKg
IHzCoMKgIDIgKwo+Pj4gwqAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVj
X2h3LmPCoCB8wqAgOTIgKysrKysrKysrKysrKysKPj4+IMKgIC4uLi9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9zdG0zMm1wMjVfdmVuY19ody5jwqAgfCAxMTUgCj4+PiArKysrKysrKysrKysrKysrKysK
Pj4+IMKgIDkgZmlsZXMgY2hhbmdlZCwgMzA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
Cj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgCj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWVkaWEvc3Qsc3RtMzJtcDI1LXZpZGVvLWNvZGVjLnlhbWwKPj4+IMKgIGNyZWF0
ZSBtb2RlIDEwMDY0NCAKPj4+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vc3Rt
MzJtcDI1X3ZkZWNfaHcuYwo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IAo+Pj4gZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9zdG0zMm1wMjVfdmVuY19ody5jCj4+Pgo+PgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
