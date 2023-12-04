Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6581FC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 15:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JOuF9D/3LmW8E55+ooL2W+OYvSf0Aw6D3Vjl8K5cq8=; b=sX6p0BB0OWT7my
	PylwIbrYhsFpPkBIL8X0I/jqQbYvq/bFC37oM0SAOXRFMWYaLXC514izsY5izW2GqPum/fQestay7
	SQ/Y+ULJ6SbkefsN04kG3l+XKSld53Al1dRwxqQt+I4vd0PFyQNNdXJddYH/Ve6iOVAxmVqp9Y3tr
	Iu7DKX8RZdlIutFxlPMrXc6EOTJwet1cXR0b+4FVJA20TC7kHxi9siPlZdf6fASVUzFp1g3TJ3DJw
	Lz61JCeXfZqBQqg8fupoYQ/qLDQNDcSuLFJM9+z6GpICX8oF2U7HyBdoItBKuJmSZcNolWybMQcQY
	9toYU/anDSujdm7W9O1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAnG-004wWc-04;
	Mon, 04 Dec 2023 15:23:34 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAnB-004wV9-2b;
	Mon, 04 Dec 2023 15:23:31 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-54c7744a93fso2853789a12.2;
        Mon, 04 Dec 2023 07:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701703408; x=1702308208; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mxYp/TPj2SDljkx7akhBocUojf/1bHbrDV2kmdKcuiw=;
        b=m3EW2CWQKrJVogtfvgs9BE7tNw8NXJ3iMHX2ncyZ6AhUmlFiLde8wjIQroEnmovyss
         m2U860sH+LyAVrzeZLLbXJOxMZjG5NuBa4yhY+PqFSq1C9avnR1CUwt0yvnazgKfZDvy
         e/XOQXFnd0vs58n0X83A2eh5fNtv5CKKtn3+U3yy74qgPAAuejDt+IcpXLyQIncz722G
         lvpi/5G6TRCXlFob8V5zitlJRuwCOpaMJknvrk9wYshfyT3XDtMgo+Mcv29L5vcoy1FC
         nUgSevNhCCHi0L+RTLwZd56w5FHTaenDkG9yZxTEJF0tHL6yuakP6uYGZQTpaUz5N0O9
         ziEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701703408; x=1702308208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mxYp/TPj2SDljkx7akhBocUojf/1bHbrDV2kmdKcuiw=;
        b=NsxkxLMBdqu9Bxa5QIkWXRjq8TGbRFAym9zUM/2AWR9FHQqgqe0bMNAQQuL4nOrlS1
         ClPnwEAk2vtsq9AicM2AAyhM0pUyQvLUZ9T6HnuBaHkC/buj0k5+/hbTkA7J7BLxIBv+
         0pfoBpp37fbi0Urb2S0P+9Kp57TJ/8uSdHKpDBEPRVPjXNrG+D2V1vPhZIPM0DLNAk7f
         n3WXg85c5ZIAzU8M+A4Y6B3w90JG/DVlXOMoTPLCpKqrX+7x1Gsup62RYJg7829kVfWB
         74d8om/UqD7E9EyE78dzOQuJ76wUfYLAjKEdNcFG7aTQummWNshVEwA77MRKHQpFW8oS
         i9Sg==
X-Gm-Message-State: AOJu0YxiLxqQAWyQvH4pTRhpLwaFaaiUoVIjnJK7cgcm8O8Y01NvvkSK
	/+LnSl9ehgsX9F5yRyApDA==
X-Google-Smtp-Source: AGHT+IH6NaMxB0hD8p+w4THyQqPHgLUhFhYRDIhCfbDi49ieB3DqkYaAbCCN/8DRLm52i+pnC1Tesg==
X-Received: by 2002:a17:907:2daa:b0:a19:a1ba:8cc2 with SMTP id gt42-20020a1709072daa00b00a19a1ba8cc2mr3994784ejc.96.1701703407956;
        Mon, 04 Dec 2023 07:23:27 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:55ff:210b:5393:c9d7? ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id s7-20020a170906bc4700b00a0f78db91c3sm5416316ejv.95.2023.12.04.07.23.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 07:23:27 -0800 (PST)
Message-ID: <e58f5aa5-a4d4-4334-a7ff-aa139ec7166f@gmail.com>
Date: Mon, 4 Dec 2023 16:23:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] ARM: dts: rockchip: Add power-controller for
 RK3128
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
References: <20231202125144.66052-1-knaerzche@gmail.com>
 <4891026.6YUMPnJmAY@diego> <4dec2316-f840-44ab-a07a-3d7f0e5e6d8f@gmail.com>
 <9588573.jRhZ6ZUK3Y@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <9588573.jRhZ6ZUK3Y@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_072329_947102_72AB3BA5 
X-CRM114-Status: GOOD (  28.56  )
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

SGkgSGVpa28sCgpBbSAwMy4xMi4yMyB1bSAxNzo0MiBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+
IEhpIEFsZXgsCj4KPiBBbSBTb25udGFnLCAzLiBEZXplbWJlciAyMDIzLCAxNzowNTo0NyBDRVQg
c2NocmllYiBBbGV4IEJlZToKPj4gQW0gMDIuMTIuMjMgdW0gMTg6NDYgc2NocmllYiBIZWlrbyBT
dMO8Ym5lcjoKPj4+IEFtIFNhbXN0YWcsIDIuIERlemVtYmVyIDIwMjMsIDE3OjM2OjE1IENFVCBz
Y2hyaWViIEFsZXggQmVlOgo+Pj4+IEFtIDAyLjEyLjIzIHVtIDE2OjUxIHNjaHJpZWIgSGVpa28g
U3TDvGJuZXI6Cj4+Pj4+IEFtIFNhbXN0YWcsIDIuIERlemVtYmVyIDIwMjMsIDEzOjUxOjQxIENF
VCBzY2hyaWViIEFsZXggQmVlOgo+Pj4+Pj4gQWRkIHBvd2VyIGNvbnRyb2xsZXIgYW5kIHFvcyBu
b2RlcyBmb3IgUkszMTI4IGluIG9yZGVyIHRvIHVzZQo+Pj4+Pj4gdGhlbSBhcyBwb3dlcmRvbWFp
bnMuCj4+Pj4+IGRvZXMgdGhlIHBvd2VyLWRvbWFpbiBjb250cm9sbGVyIHdvcmsgd2l0aCB0aGUg
aW5jb21wbGV0ZSBzZXQgb2YKPj4+Pj4gcG0tZG9tYWlucyB0b28/Cj4+Pj4gWWVzLCBpdCBkb2Vz
IC0gdGhlIG1pc3NpbmcgZG9tYWlucyBjYW4gcmVxdWVzdCBpZGxlIG9ubHkgYW5kIGNhbid0IGJl
Cj4+Pj4gcG93ZXJlZCBvbi9vZmYgLSBpZiBubyBvbmUgcmVxdWVzdHMgaWRsZSB0aGV5IGFyZSBq
dXN0IHVwIGFsbCB0aGUgdGltZS4KPj4+Pgo+Pj4+PiBXaGF0IEkgaGF2ZSBpbiBtaW5kIGlzCj4+
Pj4+IC0gYWRkaW5nIHRoZSBwb3dlci1jb250cm9sbGVyIG5vZGUgd2l0aCB0aGUgZXhpc3Rpbmcg
c2V0IG9mIHBvd2VyLWRvbWFpbnMKPj4+Pj4gLSB0aGUgZ3B1IHBtLWRvbWFpbiBpcyBpbiB0aGVy
ZQo+Pj4+PiAtIGFkZGluZyB0aGUgZ3B1IHBhcnRzCj4+Pj4gTXkgbWFpbiBjb25jZXJuIGFib3V0
IGFkZGluZyB0aGVtIGxhdGVyIHdhcyB0aGUgY2hhbmdlIG9mIHRoZSBBQkkgYWZ0ZXIKPj4+PiB0
aGV5J3ZlIGJlZW4gZXhwb3NlZCBpbiB0aGUgU29DIERULiBJZiB0aGF0J3Mgbm90IGFuIGlzc3Vl
IC0gc3VyZTogSSBjYW4KPj4+PiBhZGQgdGhlbSBpbiBhIHNlcGFyYXRlIHNlcmllcy4KPj4+IEFu
IEFCSSBjaGFuZ2Ugd291bGQgYmUgX2NoYW5naW5nXyB0aGUgZG9tYWluLWlkcyBpbiB0aGUgcmsz
MTI4LXBvd2VyLmgKPj4+IEkgdGhpbmsgOi0pIC4KPj4gV2VsbCwgYW4gYWRkaXRpb24gaXMgc3Rp
bGwgYSBjaGFuZ2UuCj4+PiBSaWdodCBub3cgdGhlIGV4aXN0aW5nIGRvbWFpbiBpZHMgaW4gdGhl
IGhlYWRlciBhcmUgYWxyZWFkeSBleHBvc2VkIHRvIHRoZQo+Pj4gd29ybGQsIHNvIHNvbWVvbmUg
Y291bGQgYWxyZWFkeSB1c2UgdGhlbSwgYnV0IG5vdCB0aGUgbmV3IG9uZXMuCj4+IEknbSBmdWxs
eSBhd2FyZSB0aGF0IG5vdGhpbmcgd291bGQgZXZlciBoYXJkIGZhaWwgYW55d2hlcmUgaWYgdGhl
IG5ldwo+PiBkb21haW4gaWRzIGdldCBhZGRlZCBsYXRlci4KPj4KPj4gTmV2ZXJ0aGVsZXNzIHdl
IHN0YXJ0IHVzaW5nIGhlcmUgYW4gQUJJIHdoaWNoIGlzIGtub3duIHRvIGJlIGluY29tcGxldGUu
Cj4+IEZvciBubyByZWFzb24sIGFzIHRoZSBwYXRjaGVzICh3aGljaCBJIGFtIG5vdyBhc2tlZCB0
byByZW1vdmUgZnJvbSB0aGlzCj4+IHNlcmllcykgZm9yIGNvbXBsZXRpb24gYXJlIGFscmVhZHkg
dGhlcmUgKGhlcmUpLgo+Pgo+PiBBbnl3YXksIGlmIHlvdSBwcmVmZXIgaXQgdGhpcyB3YXk6IEkn
bSBwbGVhc2VkIHRvIGRvIHNvLgo+IEkgd2FzIG1vcmUgdGhpbmtpbmcgb2YgYWNjZWxlcmF0aW5n
IHRoZSBncHUtcGFydCBvZiB0aGUgc2VyaWVzLCBhcyB0aGF0Cj4gcmVhbGx5IGlzIGp1c3Qgd2Fp
dGluZyBmb3IgdGhlIHBvd2VyLWRvbWFpbiBub2RlIHRoYXQgYWxyZWFkeSBoYXMgZHJpdmVyCj4g
c3VwcG9ydCBhbmQgZG9tYWluLWlkcyBwcmVzZW50Lgo+Cj4gSXQgbG9va3MgbGlrZSB5b3UncmUg
ZmVlbGluZyBtb3JlIHN0cm9uZ2x5IGFib3V0IHRoYXQgdGhvdWdoLCBzbyBJJ2xsCj4gZGVmaW5p
dGx5IG5vdCBwcmVzc3VyZSB5b3UgOy0pIC4KCkknbSByZWFsbHkgbm90IGluc2lzdGluZyBvbiB0
aGlzIC0gSSBqdXN0IGRpZG4ndCB1bmRlcnN0YW5kIHdoeSB5b3UgCndvdWxkIHdhbnQgdGhpcy4g
QW5kIGhvbmVzdGx5IEkgaGF2ZW4ndCBjb25zaWRlcmVkIG1lcmdpbmcgdGltZWxpbmUgYXMgCmFu
IGFyZ3VtZW50LgoKU28gc3VyZTogTGV0J3MgZ2V0IHRoZSBsb3cgaGFuZ2luZyBmcnVpdHMgbWVy
Z2VkIGZvciA2LjguIEhhdmluZyB0aGUgCnBvd2VyIGRvbWFpbnMgaW4gdGhlIERUIHdpbGwgYWxz
byBoZWxwIGZvciBteSB1cGNvbWluZyBoZG1pIC8gdm9wIHNlcmllcy4KCkFsZXgKCj4KPiBCdXQg
SSBndWVzcyB0aGUgc3BsaXQgaW50byBJRHMgYW5kIGRyaXZlciBjaGFuZ2Ugc2hvdWxkIHN0aWxs
IGJlCj4gZG9uZSwgZXNwZWNpYWxseSBhcyB0aGUgZHQtYmluZGluZy1oZWFkZXIgbGlrZWx5IHdp
bGwgd2FudCBhbiBBY2sKPiBmcm9tIHRoZSBEVCBtYWludGFpbmVycy4KPgo+IEFuZCB0aGUgcG93
ZXItZG9tYWluIGNoYW5nZSB3aWxsIGdvIHRocm91Z2ggdGhlIG5ldyBwbWRvbWFpbgo+IHN1YnN5
c3RlbS4KPgo+Cj4gSGVpa28KPgo+Cj4+Pj4+IEFuZCBhIHNlY29uZCBzZXJpZXMgd2l0aAo+Pj4+
PiAtIHBhdGNoMSBmcm9tIGhlcmUKPj4+Pj4gLSBhIGR0cyBwYXRjaCBhZGRpbmcgdGhlIGFkZGl0
aW9uYWwgcG0tZG9tYWlucyB0byByazMxMjguZHRzaQo+Pj4+PiAtIEkgZ3Vlc3MgcGF0Y2gxIGFs
c28gc2hvdWxkIGJlIHNwbGl0IGludG8gYSBwYXRjaCBhZGRpbmcgdGhlIGJpbmRpbmctaWRzCj4+
Pj4+ICAgICAgYW5kIGEgc2VwYXJhdGUgcGF0Y2ggZm9yIHRoZSBjb2RlIGFkZGl0aW9uLgo+Pj4+
IFllYWgsIEkgbm90aWNlZCB0aGlzIGFsc28gOikKPj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4KPj4+
PiBBbGV4Cj4+Pj4KPj4+Pj4gSGVpa28KPj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsZXgg
QmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiAgICAgYXJjaC9hcm0v
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMTI4LmR0c2kgfCAxMDEgKysrKysrKysrKysrKysrKysrKysr
KysrKwo+Pj4+Pj4gICAgIDEgZmlsZSBjaGFuZ2VkLCAxMDEgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4K
Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMxMjguZHRz
aSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzEyOC5kdHNpCj4+Pj4+PiBpbmRleCA0
ZThiMzg2MDRlY2QuLmI3MjkwNWRiMDRmNyAxMDA2NDQKPj4+Pj4+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzEyOC5kdHNpCj4+Pj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0
cy9yb2NrY2hpcC9yazMxMjguZHRzaQo+Pj4+Pj4gQEAgLTgsNiArOCw3IEBACj4+Pj4+PiAgICAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4+
Pj4+ICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+
Cj4+Pj4+PiAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAuaD4KPj4+
Pj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcmszMTI4LXBvd2VyLmg+Cj4+Pj4+PiAg
ICAgCj4+Pj4+PiAgICAgLyB7Cj4+Pj4+PiAgICAgCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
MTI4IjsKPj4+Pj4+IEBAIC0xMzMsNiArMTM0LDEwNiBAQCBzbXAtc3JhbUAwIHsKPj4+Pj4+ICAg
ICAJcG11OiBzeXNjb25AMTAwYTAwMDAgewo+Pj4+Pj4gICAgIAkJY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxyazMxMjgtcG11IiwgInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKPj4+Pj4+ICAgICAJCXJl
ZyA9IDwweDEwMGEwMDAwIDB4MTAwMD47Cj4+Pj4+PiArCj4+Pj4+PiArCQlwb3dlcjogcG93ZXIt
Y29udHJvbGxlciB7Cj4+Pj4+PiArCQkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxMjgtcG93
ZXItY29udHJvbGxlciI7Cj4+Pj4+PiArCQkJI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwxPjsKPj4+
Pj4+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+Pj4+ICsJCQkjc2l6ZS1jZWxscyA9IDww
PjsKPj4+Pj4+ICsKPj4+Pj4+ICsJCQlwb3dlci1kb21haW5AUkszMTI4X1BEX1ZJTyB7Cj4+Pj4+
PiArCQkJCXJlZyA9IDxSSzMxMjhfUERfVklPPjsKPj4+Pj4+ICsJCQkJY2xvY2tzID0gPCZjcnUg
QUNMS19DSUY+LAo+Pj4+Pj4gKwkJCQkJIDwmY3J1IEhDTEtfQ0lGPiwKPj4+Pj4+ICsJCQkJCSA8
JmNydSBEQ0xLX0VCQz4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgSENMS19FQkM+LAo+Pj4+Pj4gKwkJ
CQkJIDwmY3J1IEFDTEtfSUVQPiwKPj4+Pj4+ICsJCQkJCSA8JmNydSBIQ0xLX0lFUD4sCj4+Pj4+
PiArCQkJCQkgPCZjcnUgQUNMS19MQ0RDMD4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgSENMS19MQ0RD
MD4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgUENMS19NSVBJPiwKPj4+Pj4+ICsJCQkJCSA8JmNydSBB
Q0xLX1JHQT4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgSENMS19SR0E+LAo+Pj4+Pj4gKwkJCQkJIDwm
Y3J1IEFDTEtfVklPMD4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgQUNMS19WSU8xPiwKPj4+Pj4+ICsJ
CQkJCSA8JmNydSBIQ0xLX1ZJTz4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgSENMS19WSU9fSDJQPiwK
Pj4+Pj4+ICsJCQkJCSA8JmNydSBEQ0xLX1ZPUD4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgU0NMS19W
T1A+Owo+Pj4+Pj4gKwkJCQlwbV9xb3MgPSA8JnFvc19lYmM+LAo+Pj4+Pj4gKwkJCQkJIDwmcW9z
X2llcD4sCj4+Pj4+PiArCQkJCQkgPCZxb3NfbGNkYz4sCj4+Pj4+PiArCQkJCQkgPCZxb3Nfcmdh
PiwKPj4+Pj4+ICsJCQkJCSA8JnFvc192aXA+Owo+Pj4+Pj4gKwkJCQkjcG93ZXItZG9tYWluLWNl
bGxzID0gPDA+Owo+Pj4+Pj4gKwkJCX07Cj4+Pj4+PiArCj4+Pj4+PiArCQkJcG93ZXItZG9tYWlu
QFJLMzEyOF9QRF9WSURFTyB7Cj4+Pj4+PiArCQkJCXJlZyA9IDxSSzMxMjhfUERfVklERU8+Owo+
Pj4+Pj4gKwkJCQljbG9ja3MgPSA8JmNydSBBQ0xLX1ZEUFU+LAo+Pj4+Pj4gKwkJCQkJIDwmY3J1
IEhDTEtfVkRQVT4sCj4+Pj4+PiArCQkJCQkgPCZjcnUgQUNMS19WRVBVPiwKPj4+Pj4+ICsJCQkJ
CSA8JmNydSBIQ0xLX1ZFUFU+LAo+Pj4+Pj4gKwkJCQkJIDwmY3J1IFNDTEtfSEVWQ19DT1JFPjsK
Pj4+Pj4+ICsJCQkJcG1fcW9zID0gPCZxb3NfdnB1PjsKPj4+Pj4+ICsJCQkJI3Bvd2VyLWRvbWFp
bi1jZWxscyA9IDwwPjsKPj4+Pj4+ICsJCQl9Owo+Pj4+Pj4gKwo+Pj4+Pj4gKwkJCXBvd2VyLWRv
bWFpbkBSSzMxMjhfUERfR1BVIHsKPj4+Pj4+ICsJCQkJcmVnID0gPFJLMzEyOF9QRF9HUFU+Owo+
Pj4+Pj4gKwkJCQljbG9ja3MgPSA8JmNydSBBQ0xLX0dQVT47Cj4+Pj4+PiArCQkJCXBtX3FvcyA9
IDwmcW9zX2dwdT47Cj4+Pj4+PiArCQkJCSNwb3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4+Pj4+
PiArCQkJfTsKPj4+Pj4+ICsKPj4+Pj4+ICsJCQlwb3dlci1kb21haW5AUkszMTI4X1BEX0NSWVBU
TyB7Cj4+Pj4+PiArCQkJCXJlZyA9IDxSSzMxMjhfUERfQ1JZUFRPPjsKPj4+Pj4+ICsJCQkJY2xv
Y2tzID0gPCZjcnUgSENMS19DUllQVE8+LAo+Pj4+Pj4gKwkJCQkJIDwmY3J1IFNDTEtfQ1JZUFRP
PjsKPj4+Pj4+ICsJCQkJcG1fcW9zID0gPCZxb3NfY3J5cHRvPjsKPj4+Pj4+ICsJCQkJI3Bvd2Vy
LWRvbWFpbi1jZWxscyA9IDwwPjsKPj4+Pj4+ICsJCQl9Owo+Pj4+Pj4gKwkJfTsKPj4+Pj4+ICsJ
fTsKPj4+Pj4+ICsKPj4+Pj4+ICsJcW9zX2NyeXB0bzogcW9zQDEwMTI4MDgwIHsKPj4+Pj4+ICsJ
CWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMTI4LXFvcyIsICJzeXNjb24iOwo+Pj4+Pj4gKwkJ
cmVnID0gPDB4MTAxMjgwODAgMHgyMD47Cj4+Pj4+PiArCX07Cj4+Pj4+PiArCj4+Pj4+PiArCXFv
c19ncHU6IHFvc0AxMDEyZDAwMCB7Cj4+Pj4+PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzEyOC1xb3MiLCAic3lzY29uIjsKPj4+Pj4+ICsJCXJlZyA9IDwweDEwMTJkMDAwIDB4MjA+Owo+
Pj4+Pj4gKwl9Owo+Pj4+Pj4gKwo+Pj4+Pj4gKwlxb3NfdnB1OiBxb3NAMTAxMmUwMDAgewo+Pj4+
Pj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4+
PiArCQlyZWcgPSA8MHgxMDEyZTAwMCAweDIwPjsKPj4+Pj4+ICsJfTsKPj4+Pj4+ICsKPj4+Pj4+
ICsJcW9zX3JnYTogcW9zQDEwMTJmMDAwIHsKPj4+Pj4+ICsJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMTI4LXFvcyIsICJzeXNjb24iOwo+Pj4+Pj4gKwkJcmVnID0gPDB4MTAxMmYwMDAgMHgy
MD47Cj4+Pj4+PiArCX07Cj4+Pj4+PiArCj4+Pj4+PiArCXFvc19lYmM6IHFvc0AxMDEyZjA4MCB7
Cj4+Pj4+PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzEyOC1xb3MiLCAic3lzY29uIjsK
Pj4+Pj4+ICsJCXJlZyA9IDwweDEwMTJmMDgwIDB4MjA+Owo+Pj4+Pj4gKwl9Owo+Pj4+Pj4gKwo+
Pj4+Pj4gKwlxb3NfaWVwOiBxb3NAMTAxMmYxMDAgewo+Pj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4+PiArCQlyZWcgPSA8MHgxMDEyZjEw
MCAweDIwPjsKPj4+Pj4+ICsJfTsKPj4+Pj4+ICsKPj4+Pj4+ICsJcW9zX2xjZGM6IHFvc0AxMDEy
ZjE4MCB7Cj4+Pj4+PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzEyOC1xb3MiLCAic3lz
Y29uIjsKPj4+Pj4+ICsJCXJlZyA9IDwweDEwMTJmMTgwIDB4MjA+Owo+Pj4+Pj4gKwl9Owo+Pj4+
Pj4gKwo+Pj4+Pj4gKwlxb3NfdmlwOiBxb3NAMTAxMmYyMDAgewo+Pj4+Pj4gKwkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4+PiArCQlyZWcgPSA8MHgx
MDEyZjIwMCAweDIwPjsKPj4+Pj4+ICAgICAJfTsKPj4+Pj4+ICAgICAKPj4+Pj4+ICAgICAJZ2lj
OiBpbnRlcnJ1cHQtY29udHJvbGxlckAxMDEzOTAwMCB7Cj4+Pj4+Pgo+Pj4+Pgo+Pj4KPj4+Cj4K
Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
