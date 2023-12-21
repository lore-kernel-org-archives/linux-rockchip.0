Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53CB9C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 13:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+svbCBetnwOwqKXv+jTG+5i66VsAAdZi7Vf9Y34a8E=; b=1ikeJ/Z12mhZnq
	6W9neDGS/RVi3fz/q497U9Ki8rHo3o1LAbpLJYBwM3QAIfclOXV7Ss3ecNe/BjQ3AbbT9TAtrFHKy
	iPe9WxFP03zwDbpai+7qoqhPhVbZ12aq3z0PsWVWcBbW581q84td3V34san0u1jwIp1A5qaa88yu3
	McC6D9IfBG5lmpNlswB9Ntk3RaMSbo10SdPC5DyZXij9hnyIX+koxqC1Yy4PFxo6lEky7OsZh878j
	SEXr2LaytefQCnLcDlMs5a5JvSV3Y23MQI738lz3wF4goDAjq6+/jG2LX+ohL2j78Q/hN2wnqqqv/
	joTLwYEBd+uKhS0mTtOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJGS-0030Na-0v;
	Thu, 21 Dec 2023 13:39:04 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJGP-0030MH-01;
	Thu, 21 Dec 2023 13:39:02 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-5cd8667c59eso614663a12.2;
        Thu, 21 Dec 2023 05:38:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703165939; x=1703770739; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVUFSbN3qi21K+lCGgFuXM1K02jusWBDY0oqKAcbjUE=;
        b=NCIks5l7i5m+OpQNrV2Z+jkLELFSae4hxWzA1q7JTioaxMTyvdpN6zxaG14rNXiI1S
         3C2o44+vKc5bChbts/Ry9cfGToshOPOblDsUWKyly2R/Cg2mKwkf0J7srXI7OZ+LYrhx
         +6agS0bUEQWGrpWNjfVfb+5fngZmzQl/4E8wr1H7AiOTom/bcyv2crJPGZP4BJsFfPi1
         zzCzGQsoTKxALBGVDMMNFKQuR7nRnxaLQ/nLjW9zqyhZd0HbQQ8Nk3vshbhz+PUAIfKt
         4uKq9ao0UmJiy73p3uzdgemCAcdj9lRE5oUOFJLKwpG0IpmHRbv1Ji5+bpHMP3oUCTzT
         R49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703165939; x=1703770739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LVUFSbN3qi21K+lCGgFuXM1K02jusWBDY0oqKAcbjUE=;
        b=Y0KKqYYqfmdEvwTjNHq0jcy/XZ/Hl6e4aATKMDmha0ALnvF0s0KZqm2T6TTK5+Nw3z
         u8mIkiWFo92SDSayJxz4bi2XcKjZ7jZrLOcWpm4rIC6M2lQXlVXYaXs2ZOVrnnivSv0m
         UFSTBbn1ruG/S7ASTylTATNXTkLPOXZrpxxrWqMQJP2gixfQiKjVVe4pKd5DC0JcIY8C
         Q+7qQwv9pZHoar0+7TJII20/RzBYL1CQ+h5krsIQsDpRQtGbmRUKXn7TdlKScZnYs6cC
         7AI+U+drj+Aq6fBivlgxEb7jmIbY8QE46ZTVtUPEiA9Pe1/Iu+Yf7CigLHmbg4ChPWai
         d6QQ==
X-Gm-Message-State: AOJu0Yy6z4I/XhIHhWFEaB2CUG1v5P7k6+U9PROXIPww0YCu+TcEl8ME
	fQouENhWAkCPs50pjZjqG7o6Lg4eHo/F6ojDdds=
X-Google-Smtp-Source: AGHT+IFlh/Oi4Rh9z2yexbUVp+/+hBYRZSKMbmJvkm1t1WKRzufF4OUG2BbIe7r4iun30lTocKIp+8mlYzXxvdOnkuE=
X-Received: by 2002:a17:90b:3648:b0:28b:6aa5:34a3 with SMTP id
 nh8-20020a17090b364800b0028b6aa534a3mr5032677pjb.60.1703165938655; Thu, 21
 Dec 2023 05:38:58 -0800 (PST)
MIME-Version: 1.0
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <769a1510-f8d2-4095-9879-42f413141dee@gmail.com> <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
 <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
In-Reply-To: <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 21 Dec 2023 07:38:47 -0600
Message-ID: <CAHCN7xJ3Ktn+TnoOYdnNvKTddGCfLp4OQ+gM0WonWj-aqnsGuA@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
To: Alex Bee <knaerzche@gmail.com>
Cc: Hugues FRUCHET <hugues.fruchet@foss.st.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Marco Felsch <m.felsch@pengutronix.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	linux-kernel@vger.kernel.org, Daniel Almeida <daniel.almeida@collabora.com>, 
	Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-stm32@st-md-mailman.stormreply.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-media@vger.kernel.org, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_053901_041354_B62AFAFD 
X-CRM114-Status: GOOD (  31.58  )
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

T24gVGh1LCBEZWMgMjEsIDIwMjMgYXQgNzozMeKAr0FNIEFsZXggQmVlIDxrbmFlcnpjaGVAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEhpIEh1Z3VlcywKPgo+IEFtIDIxLjEyLjIzIHVtIDE0OjA4IHNj
aHJpZWIgSHVndWVzIEZSVUNIRVQ6Cj4gPiBIaSBBbGV4LAo+ID4KPiA+IFRoaXMgaXMgYmVjYXVz
ZSBWREVDIGFuZCBWRU5DIGFyZSB0d28gc2VwYXJhdGVkIElQcyB3aXRoIHRoZWlyIG93bgo+ID4g
aGFyZHdhcmUgcmVzb3VyY2VzIGFuZCBubyBsaW5rcyBiZXR3ZWVuIGJvdGguCj4gPiBPbiBmdXR1
cmUgU29DcywgVkRFQyBjYW4gc2hpcCBvbiBpdHMgb3duLCBzYW1lIGZvciBWRU5DLgo+ID4KPiBJ
IHRoaW5rIHRoYXQncyB3aGF0IHRoZSBkcml2ZXIgaXMvd2FzIGRlc2lnbmVkIGZvciA6KQo+Cj4g
SSBkb24ndCAgdGhpbmsgdGhlcmUgX2hhc18gdG8gYmUgYSBsaW5rIGJldHdlZW4gdmFyaWFudHMg
aW4gdGhlIHNhbWUgZmlsZS4KPiBGb3IgUm9ja2NoaXAgd2Ugb25seSBoYWQgdGhlIGlzc3VlIHRo
YXQgdGhlcmUgX2lzXyBhIGxpbmsgKHNoYXJlZAo+IHJlc291cmNlcykgYmV0d2VlbiBlbmNvZGVy
IGFuZCBkZWNvZGVyIGFuZCB0aGV5IGhhZCAoZm9yIHRoYXQgcmVhc29uKSB0byBiZQo+IGRlZmlu
ZWQgaGFzIGEgX3NpbmdsZV8gdmFyaWFudC4gQW5kIHRoZXJlIGlzIG5vIHJlYXNvbiB5b3UgY2Fu
IHNoaXAgZGVjb2Rlcgo+IGFuZCBlbmNvZGVyIHNlcGVyYXRlZCB3aGVuIHlvdSBoYXZlIHR3byB2
YXJpYW50cyAod2l0aCBkaWZmZXJlbnQKPiBjb21wYXRpYmxlcykuCj4gRm9yIFJvY2tjaGlwIGFu
ZCBpTVggdGhvc2UgZmlsZXMgYXJlIGV2ZW4gY29udGFpbmluZyB2YXJpYW50cyBmb3IgY29tcGxl
dGx5Cj4gZGlmZmVyZW50IGdlbmVyYXRpb25zIC8gZGlmZmVyZW50IFNvQ3MuIEkgaGFkIHRvIGNs
ZWFudXAgdGhpcyBtZXNzIGZvcgoKVGhlIGkuTVg4TSBNaW5pIGFuZCBQbHVzIGhhdmUgZGlmZmVy
ZW50IHBvd2VyIGRvbWFpbnMgZm9yIGVuY29kZXIgYW5kCmRlY29kZXJzIGFzIHdlbGwgYXMgZGlm
ZmVyZW50IGNsb2Nrcy4gIEtlZXBpbmcgdGhlbSBzZXBhcmF0ZSB3b3VsZAphbG1vc3QgYmUgbmVj
ZXNzYXJ5LgoKYWRhbQoKPiBSb2NrY2hpcCBvbmNlIC0gYW5kIGl0IHdhcyBubyBmdW4gOikgQW55
d2F5czogSXQncyB1cCB0byB0aGUgbWFpbnRhaW5lcnMgSQo+IGd1ZXNzIC0gSSBqdXN0IHdhbnRl
ZCB0byBhc2sgaWYgSSBtaXNzdW5kZXJzdGFuZCBzb21ldGhpbmcgaGVyZS4KPgo+IEdyZWV0aW5n
cywKPgo+IEFsZXgKPgo+ID4gSG9waW5nIHRoYXQgdGhpcyBjbGFyaWZ5Lgo+ID4KPiA+IEJlc3Qg
cmVnYXJkcywKPiA+IEh1Z3Vlcy4KPiA+Cj4gPiBPbiAxMi8yMS8yMyAxMzo0MCwgQWxleCBCZWUg
d3JvdGU6Cj4gPj4gSGkgSHVndWVzLCBIaSBOaWNvbGFzLAo+ID4+Cj4gPj4gaXMgdGhlcmUgYW55
IHNwZWNpZmljIHJlYXNvbiBJJ20gbm90IHVuZGVyc3RhbmRpbmcgLyBzZWVpbmcgd2h5IHRoaXMK
PiA+PiBpcyBhZGRlZCBpbiB0d28gc2VwZXJhdGUgdmRlYyogLyB2ZW5jKiBmaWxlcyBhbmQgbm90
IGEgc2luZ2xlIHZwdSoKPiA+PiBmaWxlPyBJcyBpdCBvbmx5IGZvciB0aGUgc2VwZXJhdGUgY2xv
Y2tzICgtbmFtZXMpIC8gaXJxcyAoLW5hbWVzKSAvCj4gPj4gY2FsbGJhY2tzPyBUaG9zZSBhcmUg
ZGVmaW5lZCBwZXIgdmFyaWFudCBhbmQgcGVyZmVjdGx5IGZpdCBpbiBhCj4gPj4gc2luZ2xlIGZp
bGUgaG9sZGluZyBvbmUgdmRlYyBhbmQgb25lIHZlbmMgdmFyaWFudC4KPiA+Pgo+ID4+IEFsZXgK
PiA+Pgo+ID4+IEFtIDIxLjEyLjIzIHVtIDA5OjQ3IHNjaHJpZWIgSHVndWVzIEZydWNoZXQ6Cj4g
Pj4+IFRoaXMgcGF0Y2hzZXQgaW50cm9kdWNlcyBzdXBwb3J0IGZvciBWREVDIHZpZGVvIGhhcmR3
YXJlIGRlY29kZXIKPiA+Pj4gYW5kIFZFTkMgdmlkZW8gaGFyZHdhcmUgZW5jb2RlciBvZiBTVE1p
Y3JvZWxlY3Ryb25pY3MgU1RNMzJNUDI1Cj4gPj4+IFNvQyBzZXJpZXMuCj4gPj4+Cj4gPj4+IFRo
aXMgaW5pdGlhbCBzdXBwb3J0IGltcGxlbWVudHMgSDI2NCBkZWNvZGluZywgVlA4IGRlY29kaW5n
IGFuZAo+ID4+PiBKUEVHIGVuY29kaW5nLgo+ID4+Pgo+ID4+PiBUaGlzIGhhcyBiZWVuIHRlc3Rl
ZCBvbiBTVE0zMk1QMjU3Ri1FVjEgZXZhbHVhdGlvbiBib2FyZC4KPiA+Pj4KPiA+Pj4gPT09PT09
PT09PT0KPiA+Pj4gPSBoaXN0b3J5ID0KPiA+Pj4gPT09PT09PT09PT0KPiA+Pj4gdmVyc2lvbiA1
Ogo+ID4+PiAgICAgLSBQcmVjaXNlIHRoYXQgdmlkZW8gZGVjb2RpbmcgYXMgYmVlbiBzdWNjZXNz
ZnVsbHkgdGVzdGVkIHVwIHRvCj4gPj4+IGZ1bGwgSEQKPiA+Pj4gICAgIC0gQWRkIE5pY29sYXMg
RHVmcmVzbmUgcmV2aWV3ZWQtYnkKPiA+Pj4KPiA+Pj4gdmVyc2lvbiA0Ogo+ID4+PiAgICAgLSBG
aXggY29tbWVudHMgZnJvbSBOaWNvbGFzIGFib3V0IGRyb3BwaW5nIGVuY29kZXIgcmF3IHN0ZXBz
Cj4gPj4+Cj4gPj4+IHZlcnNpb24gMzoKPiA+Pj4gICAgIC0gRml4IHJlbWFya3MgZnJvbSBLcnp5
c3p0b2YgS296bG93c2tpOgo+ID4+PiAgICAgIC0gZHJvcCAiaXRlbXMiLCB3ZSBrZWVwIHNpbXBs
ZSBlbnVtIGluIHN1Y2ggY2FzZQo+ID4+PiAgICAgIC0gZHJvcCBzZWNvbmQgZXhhbXBsZSAtIGl0
IGlzIHRoZSBzYW1lIGFzIHRoZSBmaXJzdAo+ID4+PiAgICAgLSBEcm9wIHVudXNlZCBub2RlIGxh
YmVscyBhcyBzdWdnZXN0ZWQgYnkgQ29ub3IgRG9vbGV5Cj4gPj4+ICAgICAtIFJldmlzaXQgbWlu
L21heCByZXNvbHV0aW9ucyBhcyBzdWdnZXN0ZWQgYnkgTmljb2xhcyBEdWZyZXNuZQo+ID4+Pgo+
ID4+PiB2ZXJzaW9uIDI6Cj4gPj4+ICAgICAtIEZpeCByZW1hcmtzIGZyb20gS3J6eXN6dG9mIEtv
emxvd3NraSBvbiB2MToKPiA+Pj4gICAgICAtIHNpbmdsZSB2aWRlby1jb2RlYyBiaW5kaW5nIGZv
ciBib3RoIFZERUMvVkVOQwo+ID4+PiAgICAgIC0gZ2V0IHJpZCBvZiAiLW5hbWVzIgo+ID4+PiAg
ICAgIC0gdXNlIG9mIGdlbmVyaWMgbm9kZSBuYW1lICJ2aWRlby1jb2RlYyIKPiA+Pj4KPiA+Pj4g
dmVyc2lvbiAxOgo+ID4+PiAgICAtIEluaXRpYWwgc3VibWlzc2lvbgo+ID4+Pgo+ID4+PiBIdWd1
ZXMgRnJ1Y2hldCAoNSk6Cj4gPj4+ICAgIGR0LWJpbmRpbmdzOiBtZWRpYTogRG9jdW1lbnQgU1RN
MzJNUDI1IFZERUMgJiBWRU5DIHZpZGVvIGNvZGVjcwo+ID4+PiAgICBtZWRpYTogaGFudHJvOiBh
ZGQgc3VwcG9ydCBmb3IgU1RNMzJNUDI1IFZERUMKPiA+Pj4gICAgbWVkaWE6IGhhbnRybzogYWRk
IHN1cHBvcnQgZm9yIFNUTTMyTVAyNSBWRU5DCj4gPj4+ICAgIGFybTY0OiBkdHM6IHN0OiBhZGQg
dmlkZW8gZGVjb2RlciBzdXBwb3J0IHRvIHN0bTMybXAyNTUKPiA+Pj4gICAgYXJtNjQ6IGR0czog
c3Q6IGFkZCB2aWRlbyBlbmNvZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+ID4+Pgo+ID4+PiAg
IC4uLi9tZWRpYS9zdCxzdG0zMm1wMjUtdmlkZW8tY29kZWMueWFtbCAgICAgICB8ICA1MCArKysr
KysrKwo+ID4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpICAgICAg
ICB8ICAxMiArKwo+ID4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1NS5kdHNp
ICAgICAgICB8ICAxNyArKysKPiA+Pj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL0tjb25maWcgICAgfCAgMTQgKystCj4gPj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9NYWtlZmlsZSAgIHwgICA0ICsKPiA+Pj4gICAuLi4vbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vaGFudHJvX2Rydi5jICAgfCAgIDQgKwo+ID4+PiAgIC4uLi9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaCAgICB8ICAgMiArCj4gPj4+ICAgLi4uL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmMgIHwgIDkyICsrKysrKysrKysrKysr
Cj4gPj4+ICAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZW5jX2h3LmMgIHwg
MTE1Cj4gPj4+ICsrKysrKysrKysrKysrKysrKwo+ID4+PiAgIDkgZmlsZXMgY2hhbmdlZCwgMzA3
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
Cj4gPj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMm1w
MjUtdmlkZW8tY29kZWMueWFtbAo+ID4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NAo+ID4+PiBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmMKPiA+Pj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQKPiA+Pj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9zdG0zMm1wMjVfdmVuY19ody5jCj4gPj4+Cj4gPj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
