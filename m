Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02BD2C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:28:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 70786207BB
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:28:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IJ4mvv3d";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AYZjBHly"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 70786207BB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wx9wE//B0/tVPFiNDFvQXwZcF/BGAk/jLznByha2LEo=; b=IJ4mvv3dr/DP/CsrROmHXgRpf
	94/OmVwxWXfMsTiT+/kVFpSAxKZy/ZZtu8WZ6G9kv/XOqLMoyTHhrTnE/yEZqcsEZdEmw5JBd7Uh0
	0tB89FtvSFKAhrV+hWzM6qtHPOd2iw8J7nBLACLU48AFN6zI17YirAQr3BkRu4yNAi8ALSwlfKIGI
	f5M12R8LnTDC7C4RO4ZgtzsJx6wKE38crmeDMwvhkgyMLEg8xI56yyh3/ryDB4Ha0CV22gEUkjbj6
	g+NrY+70ffe4Ne/RZPNO8s5uGt6xuseQgotRap/th5XKzbCuFPGbccD4s0BAlQuarl4v4saaC/SVr
	6jbLm0Ruw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdCeP-0003ZT-Er; Thu, 12 Nov 2020 13:28:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdCeN-0003Ym-Oq
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 13:28:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id 23so6176559wmg.1
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 05:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DKFGKs2xFbhbYJY6iHo3vK6PaFJgcL7PWGvvAZgASeA=;
 b=AYZjBHlyliS7Ymssitl0ZrRCQwLbagKctseFoCZMVTZYsnM5VmcZqeyTnrIRnIUKFp
 JyByvj31/nsiPt2UUsPVXOU+aPEXLvpTaihace8LfTZnv9tmibK9bB7PHvhYlB0FLLuE
 WXG25GyT6kWteaPMVw0mM6T5U1R7tdIYpds/C6PStlXvXKcP82rwjEN8Y1y8lrktHiJI
 9RzfRDmZNDDKJsUtvSqN9KC1uX8e6gEgKx43QNwx8zjPIXh6lFm7zKzNEthVZl8hEoza
 mus1SV6qrgU6yqNlJ5ylLy6GA4qUeHJ9pDHehi/ybjEVvUG+1PzUNmiH+wAb0HCkaSCO
 G8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DKFGKs2xFbhbYJY6iHo3vK6PaFJgcL7PWGvvAZgASeA=;
 b=EeiHweRrd1MkRPuURakcVHwC4ZOsOEDwvo8ics331AAnnOS23sHCGyhPic+XK6v2JL
 W8kY6J4UOllBpDETa5eLUDaMD8QR9Qy6GarRaKa2FqYfGN5z286LD/6oMtEz3jF3SBuz
 LabEcjKOzCIKFWSOAhwkt9C/zc1dBf/KXYO+in0529BwVHATnNS3N07fCdaQhzy8f54Q
 WBMSr33GkP94yRpA9G+HUy7eSSVjycrFTIAOLHsL+1earbgEC52108LGwBpP0adbri85
 d4ySPSvS9BgmVnnXcKMJJX5dtrDfncF1AGb01DJ2nUIBMSUcM70JIhUVj8nSPmsPp0bt
 Jbgw==
X-Gm-Message-State: AOAM530ruxa8Ht3KmZtO/jrslp6lozBSVZqc7mmNfqkvyHnZGKNJNHJ0
 Y2ZTcnSfhfVDX2mKcsJImQa2wg==
X-Google-Smtp-Source: ABdhPJx9+9Zc/sobhlN/21jqgd6N2DrW+DWihpuemtsepdNTDhJLhJ/5gHtNFCUUQGYlqagI6xolEw==
X-Received: by 2002:a1c:8150:: with SMTP id c77mr10167726wmd.26.1605187710531; 
 Thu, 12 Nov 2020 05:28:30 -0800 (PST)
Received: from dell ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id w10sm7088635wra.34.2020.11.12.05.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:28:29 -0800 (PST)
Date: Thu, 12 Nov 2020 13:28:28 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 05/25] soc: rockchip: io-domain: Remove incorrect and
 incomplete comment header
Message-ID: <20201112132828.GK1997862@dell>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
 <40131312.rmDrfLbc3i@diego> <20201112132224.GJ1997862@dell>
 <2215873.HjEmSL4Tfo@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2215873.HjEmSL4Tfo@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_082831_847690_322D1E7C 
X-CRM114-Status: GOOD (  19.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAxMiBOb3YgMjAyMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgo+IEFtIERvbm5lcnN0
YWcsIDEyLiBOb3ZlbWJlciAyMDIwLCAxNDoyMjoyNCBDRVQgc2NocmllYiBMZWUgSm9uZXM6Cj4g
PiBPbiBUaHUsIDEyIE5vdiAyMDIwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IAo+ID4gPiBB
bSBEb25uZXJzdGFnLCAxMi4gTm92ZW1iZXIgMjAyMCwgMTE6MzM6NDQgQ0VUIHNjaHJpZWIgTGVl
IEpvbmVzOgo+ID4gPiA+IE9uIFR1ZSwgMDMgTm92IDIwMjAsIExlZSBKb25lcyB3cm90ZToKPiA+
ID4gPiAKPiA+ID4gPiA+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJu
aW5nKHMpOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9t
YWluLmM6NTc6IHdhcm5pbmc6IENhbm5vdCB1bmRlcnN0YW5kICAqIEBzdXBwbGllczogdm9sdGFn
ZSBzZXR0aW5ncyBtYXRjaGluZyB0aGUgcmVnaXN0ZXIgYml0cy4KPiA+ID4gPiA+IAo+ID4gPiA+
ID4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiA+ID4gPiBDYzogTGlh
bSBHaXJkd29vZCA8bGdpcmR3b29kQGdtYWlsLmNvbT4KPiA+ID4gPiA+IENjOiBNYXJrIEJyb3du
IDxicm9vbmllQGtlcm5lbC5vcmc+Cj4gPiA+ID4gPiBDYzogIlJhZmFlbCBKLiBXeXNvY2tpIiA8
cmFmYWVsLmoud3lzb2NraUBpbnRlbC5jb20+Cj4gPiA+ID4gPiBDYzogRG91ZyBBbmRlcnNvbiA8
ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+ID4gPiA+ID4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpv
bmVzQGxpbmFyby5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBkcml2ZXJzL3NvYy9yb2Nr
Y2hpcC9pby1kb21haW4uYyB8IDMgLS0tCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgZGVs
ZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9y
b2NrY2hpcC9pby1kb21haW4uYyBiL2RyaXZlcnMvc29jL3JvY2tjaGlwL2lvLWRvbWFpbi5jCj4g
PiA+ID4gPiBpbmRleCBlZWNlOTdmOTdlZjhmLi5kMTNkMmQ0OTc3MjBiIDEwMDY0NAo+ID4gPiA+
ID4gLS0tIGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMKPiA+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvc29jL3JvY2tjaGlwL2lvLWRvbWFpbi5jCj4gPiA+ID4gPiBAQCAtNTMsOSArNTMs
NiBAQAo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gIHN0cnVjdCByb2NrY2hpcF9pb2RvbWFpbjsKPiA+
ID4gPiA+ICAKPiA+ID4gPiA+IC0vKioKPiA+ID4gPiA+IC0gKiBAc3VwcGxpZXM6IHZvbHRhZ2Ug
c2V0dGluZ3MgbWF0Y2hpbmcgdGhlIHJlZ2lzdGVyIGJpdHMuCj4gPiA+ID4gPiAtICovCj4gPiA+
ID4gPiAgc3RydWN0IHJvY2tjaGlwX2lvZG9tYWluX3NvY19kYXRhIHsKPiA+ID4gPiA+ICAJaW50
IGdyZl9vZmZzZXQ7Cj4gPiA+ID4gPiAgCWNvbnN0IGNoYXIgKnN1cHBseV9uYW1lc1tNQVhfU1VQ
UExJRVNdOwo+ID4gPiA+IAo+ID4gPiA+IEFueSBpZGVhIHdobyB3aWxsIHBpY2sgdGhpcyB1cD8K
PiA+ID4gCj4gPiA+IG1lIDotKQo+ID4gCj4gPiBXZWxsLCB0aGF0J3MgY2VydGFpbmx5IGEgc3Rh
cnQuIDopCj4gPiAKPiA+IFdoYXQgYXJlIHlvdXIgcGxhbnM/Cj4gCj4gdGhlIHVzdWFsLCBteSBy
b2NrY2hpcC10cmVlIC0+IGFybXNvYyBkcml2ZXIgYnJhbmNoIC0+IHRvcnZhbGRzIC0+IDUuMTEg
Oy0pCgpTb3JyeSwgdGhlIGFtYmlndWl0eSB3YXMgbXkgZmF1bHQuCgpXaGVuIGRvIHlvdSBwbGFu
IG9uIGhvb3ZlcmluZyBpdCB1cD8KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRl
Y2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
