Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE700C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sg7ig7TqGByBxWH9z+5RCvPBYexBbrScwFnkKk9R2Kw=; b=rAv8/Y2k9CUYFs
	SBgstxN75ocEVmTHqngo1xZhZ8i62xQZijP5rOlha5DbkSloFH1TyOuRUPGqxTBwBzpKNYO+hwy2A
	DUVhe3NbSvkSym14AnxLdWFIzBvHySN+u7sWfuqfYGdmwo93rtHUz1qqAgO7dyIA5hs3CDRuLjC75
	JB/RmtHETKlRYu6g07AUPJ4ksuIScQWH7/RMwE2R0pXGpk3TwQt9ivXVYlStGZLc6Q8swbI/munKr
	uI9CbanMSe5gpD0Tr68+TLSWG0Mq1Hciqfucpa9QxnxkmmkIBsnQkwO/jyWSEoQMHIcyRCUBiFEPl
	/s8fEkDY4u6B3okylVYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5bE-00000005rhV-3NEG;
	Thu, 23 May 2024 10:23:04 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5bB-00000005rf4-1ySY
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:23:03 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5231efd80f2so8278021e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716459778; x=1717064578; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yHQzcgh+wt+86lDxNvmMSEbfCa2z01pUSJ+bgewkqHY=;
        b=ddWeWC4mATyWHgjqzQs/m/9ltMhhnPe+f7pzT+rbxCK9GV4cfSDepK9zHvPIVdbQFq
         I2yoPxsb3wnK9C1ughyrQKZtnalCUCvOkeDQodGZ1cbZz+4Pbei8iHKuY7uMwzBQappL
         qO3dcQjHHDUxciwjCSGbatdw55ljRYRtUm6YXznN/KX4ocRk2i1VhLr3XCyZ9xZCEEmN
         R/2xqrfL6aYXRCVYtJ7qaCkNXr2+zK2heS5OWzGE63Vqiq5D61GyGWJqqwOK57egasBs
         3rw6rlNrlhZ9Ki4Cr3ElojaeXIYoufBPdoDBrr5KRPAFIrwBx6AM4m2tC/EUuPLaUoZI
         j8Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716459778; x=1717064578;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yHQzcgh+wt+86lDxNvmMSEbfCa2z01pUSJ+bgewkqHY=;
        b=rpOR1dA9EWW9gkG84DdKmE+02zs5mBxHlIh4eyB3ASYrfioHRrvTWzp8R28XQOKdLb
         Xyd9uIPH/5WtdKKpMBQGJm3ellE7msOOFX1/NjVbIiHCBvJJ6gg6CVrx/hsJna2SxzI/
         zkuMv8vwpnggaJ/vjUHDjnR6y0CBONf0+DusQq49NpsZsKIv/2tG1Hb3/Tsstt3YIcuD
         X+Fl0autJGHoJlw9IAIjAOpnQ6JiVZ6N1Tl+zfGw427SbAUrNcl+ISIdiEVeDqB714zs
         IJpypvi3Wo9RA9RMOh9avEa9e1yo6qmWRN2D6gcJuXqHODg6SbWiKMjU8OV1DzpoRFj9
         kqgg==
X-Forwarded-Encrypted: i=1; AJvYcCX+mWgFv6qaxpu38w68hyLhkTs3KtsQYiGK0JqlQlIlg8gvtaom3Tq9r2LdH0BpRTNIIGK39h+nFUZ1etfKUFDRHm7OHcGsZV+hq3NNy/97S6cm
X-Gm-Message-State: AOJu0YxmcSHMvYB0oUV5Buk0xURAFkNQ9Bq03EWDOh41kEDeNo67OBph
	NuuzPSGf8nqb69jmDcewPaB4m7I58hNc+r5lrrTigHliKUyqJ7REGo31mNy4MZM=
X-Google-Smtp-Source: AGHT+IGaIAjJQzrs40kJxNB7OiB13JCw7thzg4cpmesH+f4K6m+C9dDIXqqPiTDnb/PD63DiDWKJ5Q==
X-Received: by 2002:a05:6512:4cd:b0:51a:cc00:951b with SMTP id 2adb3069b0e04-526c0c544abmr2482181e87.49.1716459778462;
        Thu, 23 May 2024 03:22:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d90b2sm5326325e87.242.2024.05.23.03.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:22:57 -0700 (PDT)
Date: Thu, 23 May 2024 13:22:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: Re: [PATCH v14 17/28] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <4n55dbl2h275z5ubebigri4xjtjsvt44w62n656srdgndcav2j@rrq5haucqx5u>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-17-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-17-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_032301_527502_E4562E60 
X-CRM114-Status: GOOD (  20.73  )
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

T24gVHVlLCBNYXkgMjEsIDIwMjQgYXQgMTI6MTM6NTBQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBUaGUgaTkxNSBkcml2ZXIgaGFzIGEgcHJvcGVydHkgdG8gZm9yY2UgdGhlIFJHQiBy
YW5nZSBvZiBhbiBIRE1JIG91dHB1dC4KPiBUaGUgdmM0IGRyaXZlciB0aGVuIGltcGxlbWVudGVk
IHRoZSBzYW1lIHByb3BlcnR5IHdpdGggdGhlIHNhbWUKPiBzZW1hbnRpY3MuIEtXaW4gaGFzIHN1
cHBvcnQgZm9yIGl0LCBhbmQgYSBQUiBmb3IgbXV0dGVyIGlzIGFsc28gdGhlcmUgdG8KPiBzdXBw
b3J0IGl0Lgo+IAo+IEJvdGggZHJpdmVycyBpbXBsZW1lbnRpbmcgdGhlIHNhbWUgcHJvcGVydHkg
d2l0aCB0aGUgc2FtZSBzZW1hbnRpY3MsCj4gcGx1cyB0aGUgdXNlcnNwYWNlIGhhdmluZyBzdXBw
b3J0IGZvciBpdCwgaXMgcHJvb2YgZW5vdWdoIHRoYXQgaXQncwo+IHByZXR0eSBtdWNoIGEgZGUt
ZmFjdG8gc3RhbmRhcmQgbm93IGFuZCB3ZSBjYW4gcHJvdmlkZSBoZWxwZXJzIGZvciBpdC4KPiAK
PiBMZXQncyBwbHVtYiBpdCBpbnRvIHRoZSBuZXdseSBjcmVhdGVkIEhETUkgY29ubmVjdG9yLgo+
IAo+IFJldmlld2VkLWJ5OiBEYXZlIFN0ZXZlbnNvbiA8ZGF2ZS5zdGV2ZW5zb25AcmFzcGJlcnJ5
cGkuY29tPgo+IEFja2VkLWJ5OiBQZWtrYSBQYWFsYW5lbiA8cGVra2EucGFhbGFuZW5AY29sbGFi
b3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogU2ViYXN0aWFuIFdpY2sgPHNlYmFzdGlhbi53aWNrQHJl
ZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2dwdS9rbXMtcHJvcGVydGllcy5jc3YgICAgICAg
ICAgICB8ICAxIC0KPiAgZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2hkbWlfc3RhdGVfaGVs
cGVyLmMgfCAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5jICAgICAgICAgICAg
ICAgICAgICB8ICAyICsKPiAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jICAgICAg
ICAgICAgICAgfCAgNCArKwo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jICAgICAg
ICAgICAgICAgICB8IDg4ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9kcm0v
ZHJtX2Nvbm5lY3Rvci5oICAgICAgICAgICAgICAgICAgICAgfCAzNiArKysrKysrKysrCj4gIDYg
ZmlsZXMgY2hhbmdlZCwgMTMzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNzdiBiL0RvY3VtZW50
YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNzdgo+IGluZGV4IDBmOTU5MDgzNDgyOS4uY2FlZjE0
YzUzMmQ0IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNz
dgo+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2ttcy1wcm9wZXJ0aWVzLmNzdgo+IEBAIC0xNSwx
MSArMTUsMTAgQEAgT3duZXIgTW9kdWxlL0RyaXZlcnMsR3JvdXAsUHJvcGVydHkgTmFtZSxUeXBl
LFByb3BlcnR5IFZhbHVlcyxPYmplY3QgYXR0YWNoZWQsRGUKPiAgLCzigJxzYXR1cmF0aW9u4oCd
LFJBTkdFLCJNaW49MCwgTWF4PTEwMCIsQ29ubmVjdG9yLFRCRAo+ICAsLOKAnGh1ZeKAnSxSQU5H
RSwiTWluPTAsIE1heD0xMDAiLENvbm5lY3RvcixUQkQKPiAgLFZpcnR1YWwgR1BVLOKAnHN1Z2dl
c3RlZCBY4oCdLFJBTkdFLCJNaW49MCwgTWF4PTB4ZmZmZmZmZmYiLENvbm5lY3Rvcixwcm9wZXJ0
eSB0byBzdWdnZXN0IGFuIFggb2Zmc2V0IGZvciBhIGNvbm5lY3Rvcgo+ICAsLOKAnHN1Z2dlc3Rl
ZCBZ4oCdLFJBTkdFLCJNaW49MCwgTWF4PTB4ZmZmZmZmZmYiLENvbm5lY3Rvcixwcm9wZXJ0eSB0
byBzdWdnZXN0IGFuIFkgb2Zmc2V0IGZvciBhIGNvbm5lY3Rvcgo+ICAsT3B0aW9uYWwsIiIiYXNw
ZWN0IHJhdGlvIiIiLEVOVU0sInsgIiJOb25lIiIsICIiNDozIiIsICIiMTY6OSIiIH0iLENvbm5l
Y3RvcixUREIKPiAtaTkxNSxHZW5lcmljLCIiIkJyb2FkY2FzdCBSR0IiIiIsRU5VTSwieyAiIkF1
dG9tYXRpYyIiLCAiIkZ1bGwiIiwgIiJMaW1pdGVkIDE2OjIzNSIiIH0iLENvbm5lY3RvciwiV2hl
biB0aGlzIHByb3BlcnR5IGlzIHNldCB0byBMaW1pdGVkIDE2OjIzNSBhbmQgQ1RNIGlzIHNldCwg
dGhlIGhhcmR3YXJlIHdpbGwgYmUgcHJvZ3JhbW1lZCB3aXRoIHRoZSByZXN1bHQgb2YgdGhlIG11
bHRpcGxpY2F0aW9uIG9mIENUTSBieSB0aGUgbGltaXRlZCByYW5nZSBtYXRyaXggdG8gZW5zdXJl
IHRoZSBwaXhlbHMgbm9ybWFsbHkgaW4gdGhlIHJhbmdlIDAuLjEuMCBhcmUgcmVtYXBwZWQgdG8g
dGhlIHJhbmdlIDE2LzI1NS4uMjM1LzI1NS4iCgpTaG91bGQgaXQgc3RpbGwgYmUgZGVmaW5lZCBh
cyBhIGdlbmVyaWMgcHJvcGVydHk/Cgo+ICAsLOKAnGF1ZGlv4oCdLEVOVU0sInsgIiJmb3JjZS1k
dmkiIiwgIiJvZmYiIiwgIiJhdXRvIiIsICIib24iIiB9IixDb25uZWN0b3IsVEJECj4gICxTRFZP
LVRWLOKAnG1vZGXigJ0sRU5VTSwieyAiIk5UU0NfTSIiLCAiIk5UU0NfSiIiLCAiIk5UU0NfNDQz
IiIsICIiUEFMX0IiIiB9IGV0Yy4iLENvbm5lY3RvcixUQkQKPiAgLCwiIiJsZWZ0X21hcmdpbiIi
IixSQU5HRSwiTWluPTAsIE1heD0gU0RWTyBkZXBlbmRlbnQiLENvbm5lY3RvcixUQkQKPiAgLCwi
IiJyaWdodF9tYXJnaW4iIiIsUkFOR0UsIk1pbj0wLCBNYXg9IFNEVk8gZGVwZW5kZW50IixDb25u
ZWN0b3IsVEJECj4gICwsIiIidG9wX21hcmdpbiIiIixSQU5HRSwiTWluPTAsIE1heD0gU0RWTyBk
ZXBlbmRlbnQiLENvbm5lY3RvcixUQkQKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Rp
c3BsYXkvZHJtX2hkbWlfc3RhdGVfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9k
cm1faGRtaV9zdGF0ZV9oZWxwZXIuYwo+IGluZGV4IDkzY2IzMGRiYTg2ZS4uODg4ZmUxZmU5NTk0
IDEwMDY0NAoKClt0aGUgcmVzdCBMR1RNXQoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
