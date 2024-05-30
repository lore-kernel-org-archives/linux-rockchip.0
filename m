Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE9E5C27C43
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6lv0vliwzRfqnsPbekWcyUYeACZNzWXpDjipdP7v0c=; b=G1YagW9mRxJt86
	QJ7ZPlat5VsbWVOeBUY+o9HstUlAmsuI4FwMPiTZ7tlhZHInVt8zEEt6p6GeNikhk9Z7deXz5e0vF
	1mXIff0ynddAT6aLOkL2XR6bKoFW3kkNF8/yEoU4uJBf04R5QoFf3+JvICkWZHAcgmhZ9bS9tQRyy
	r5mHd3i5DsafOEI3uu+NjvTjBOGnGPn0vP3Ik6FK/kD4fOvWGxY80c1rhU6Uj0rZxHiyqmxGQYjOX
	gGZ18x2bVgh7aB1CIgU98DHvdtLnH7Y++b6QMh4l2x3O9+nXcbsT9FpRUDbYhYq9mLTrlJLaZbwI1
	gbCJ67NA8TRz59ROh8UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCovW-00000008eye-47wA;
	Thu, 30 May 2024 23:11:18 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCovT-00000008exM-3mRB
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 23:11:17 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52b0d25b54eso2102300e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717110672; x=1717715472; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5rtVeYQ5u84CD0AA2JcRrrPlaJCkNb/Fj7mnCC/lgjg=;
        b=r/JozQdx16hPPEHAwgWw+GLUEpTyQUk0kHipA6t1yktBlYv81C8ol6wlVMxdl7LXo8
         wWCG4y6gSeie/Je1sPTXZ/TfDq2B3hoT65ocbm38GbBOrsB+O1n3+OiwnQRGe+XaimdZ
         OMYOu7TIe9IT6ObCRnuak9RrVzW7EphpHISDwLXt01enYEilE5WNfaT6DFZhYfMqFClK
         Uhct45Ud1qc5teTM/yCy5lPExcmTsiYg+EFGYS/RcenpKEtBKQjsGN0+CE1P07khkj5M
         Pw8iaWi+LsdxR1R6/ozsv+EJoQW5fD79ox/JfE5sFbqd2f3qFHknsZ2/AOxuO0jV2TNo
         9S7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717110672; x=1717715472;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5rtVeYQ5u84CD0AA2JcRrrPlaJCkNb/Fj7mnCC/lgjg=;
        b=GrPRCs35UirEapK2kKdpfdkne/Cczp1G3/E8iz1Wqf3Sg2P0C5SiaVtak5QaZxnlkw
         kmCHZyDfdXwKlu/PTfl+bKByLosjP1D2/8uPmCIEUGkgppHJxat0HegVBPjPxPLhFiQ/
         BNuYLgcbsEe+zdv3S8M0rmGVMK79SuwU2luT06WbatM4IR5GKDsUtjR175+EY+89NtHp
         Zr7k5cwYiheQZL6tZMKYA4hHGehcVedf2uzePTG3WHIO7D6DO4Y6E054ToAlIHKM5ei9
         G1HJZ0hcqouFXZAKT54dcTguAL447ikij7+945crlC1VmIJiL2UOvrL32U7zM1ii3yX8
         aojA==
X-Forwarded-Encrypted: i=1; AJvYcCXsz4a80x2HZ62/qiMnFz3Rc+IZntqXNyyJ2YCdI8JgvH7PJRFZXNtg4TnUSiM9SbRZaP7arYDk+19m3/39pPtDykZYhHSz2JBemXp5OBsPbRVf
X-Gm-Message-State: AOJu0Ywuwtg0O45jPJTbQojTNrQz5kkUEtBaoeN/HLk7F/jctRcycH97
	kvDQFOEhblFGQvctWtBw9uJuyusOsQArV2XYmJsEzQpUxJxpObBRiWJlKMoZgGI=
X-Google-Smtp-Source: AGHT+IG0t3rZTPhtJybKaUF15LVmYhDBWgz6POuiQcknG9wUsiCJYYjByHxxMrF/IH17dhoIvEgTyA==
X-Received: by 2002:ac2:51b0:0:b0:51f:9549:9c0d with SMTP id 2adb3069b0e04-52b895a4043mr42465e87.48.1717110671620;
        Thu, 30 May 2024 16:11:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d34d76sm120623e87.10.2024.05.30.16.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:11:11 -0700 (PDT)
Date: Fri, 31 May 2024 02:11:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Doug Anderson <dianders@chromium.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v2 1/3] drm/panel-edp: add fat warning against adding new
 panel compatibles
Message-ID: <kxfuvsmi6eblpavtevwllqmkdnzdih7kfc73wlos7yozikerjv@si6jshczffjy>
References: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org>
 <20240529-edp-panel-drop-v2-1-fcfc457fc8dd@linaro.org>
 <CAD=FV=Uw+KYQQ2xFLhNdWSW0sNX9uV_zSAVO2uBWY4JEcaO2bA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Uw+KYQQ2xFLhNdWSW0sNX9uV_zSAVO2uBWY4JEcaO2bA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_161115_970344_8326998D 
X-CRM114-Status: GOOD (  34.14  )
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

T24gVGh1LCBNYXkgMzAsIDIwMjQgYXQgMDc6MzM6NTlBTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBUdWUsIE1heSAyOCwgMjAyNCBhdCA0OjUy4oCvUE0gRG1pdHJ5
IEJhcnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdyb3RlOgo+ID4KPiA+
IEFkZCBhIGZhdCB3YXJuaW5nIGFnYWluc3QgYWRkaW5nIG5ldyBwYW5lbCBjb21wYXRpYmxlcyB0
byB0aGUgcGFuZWwtZWRwCj4gPiBkcml2ZXIuIEFsbCBuZXcgdXNlcnMgb2YgdGhlIGVEUCBwYW5l
bHMgYXJlIHN1cHBvc2VkIHRvIHVzZSB0aGUgZ2VuZXJpYwo+ID4gImVkcC1wYW5lbCIgY29tcGF0
aWJsZSBkZXZpY2Ugb24gdGhlIEFVWCBidXMuIFRoZSByZW1haW5pbmcgY29tcGF0aWJsZXMKPiA+
IGFyZSBlaXRoZXIgdXNlZCBieSB0aGUgZXhpc3RpbmcgRFQgb3Igd2VyZSB1c2VkIHByZXZpb3Vz
bHkgYW5kIGFyZQo+ID4gcmV0YWluZWQgZm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5Lgo+ID4K
PiA+IFN1Z2dlc3RlZC1ieTogRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+
ID4gUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3Jn
Pgo+ID4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBs
aW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5j
IHwgMTggKysrKysrKysrKysrKysrKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3BhbmVsL3BhbmVsLWVkcC5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jCj4g
PiBpbmRleCA2ZGIyNzdlZmNiYjcuLjk1YjI1ZWM2NzE2OCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1lZHAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Bh
bmVsL3BhbmVsLWVkcC5jCj4gPiBAQCAtMTc3Niw3ICsxNzc2LDIzIEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIHBsYXRmb3JtX29mX21hdGNoW10gPSB7Cj4gPiAgICAgICAgIHsK
PiA+ICAgICAgICAgICAgICAgICAvKiBNdXN0IGJlIGZpcnN0ICovCj4gPiAgICAgICAgICAgICAg
ICAgLmNvbXBhdGlibGUgPSAiZWRwLXBhbmVsIiwKPiA+IC0gICAgICAgfSwgewo+ID4gKyAgICAg
ICB9LAo+ID4gKyAgICAgICAvKgo+ID4gKyAgICAgICAgKiBEbyBub3QgYWRkIHBhbmVscyB0byB0
aGUgbGlzdCBiZWxvdyB1bmxlc3MgdGhleSBjYW5ub3QgYmUgaGFuZGxlZCBieQo+ID4gKyAgICAg
ICAgKiB0aGUgZ2VuZXJpYyBlZHAtcGFuZWwgY29tcGF0aWJsZS4KPiA+ICsgICAgICAgICoKPiA+
ICsgICAgICAgICogVGhlIG9ubHkgdHdvIHZhbGlkIHJlYXNvbnMgYXJlOgo+ID4gKyAgICAgICAg
KiAtIGJlY2F1c2Ugb2YgdGhlIHBhbmVsIGlzc3VlcyAoZS5nLiBicm9rZW4gRURJRCBvciBicm9r
ZW4KPiA+ICsgICAgICAgICogICBpZGVudGlmaWNhdGlvbiksCj4gPiArICAgICAgICAqIC0gYmVj
YXVzZSB0aGUgcGxhdGZvcm0gd2hpY2ggdXNlcyB0aGUgcGFuZWwgZGlkbid0IHdpcmUgdXAgdGhl
IEFVWAo+ID4gKyAgICAgICAgKiAgIGJ1cyBwcm9wZXJseS4KPiA+ICsgICAgICAgICoKPiA+ICsg
ICAgICAgICogSW4gYWxsIG90aGVyIGNhc2VzIHRoZSBwbGF0Zm9ybSBzaG91bGQgdXNlIHRoZSBh
dXgtYnVzIGFuZCBkZWNsYXJlCj4gPiArICAgICAgICAqIHRoZSBwYW5lbCB1c2luZyB0aGUgJ2Vk
cC1wYW5lbCcgY29tcGF0aWJsZSBhcyBhIGRldmljZSBvbiB0aGUgQVVYCj4gPiArICAgICAgICAq
IGJ1cy4gVGhlIGxhY2sgb2YgdGhlIGF1eC1idXMgc3VwcG9ydCBpcyBub3QgYSB2YWxpZCBjYXNl
LiBQbGF0Zm9ybXMKPiA+ICsgICAgICAgICogYXJlIHVyZ2VkIHRvIGJlIGNvbnZlcnRlZCB0byBk
ZWNsYXJpbmcgcGFuZWxzIGluIGEgcHJvcGVyIHdheS4KPiAKPiBJJ20gc3RpbGwgYXQgbGVhc3Qg
c2xpZ2h0bHkgY29uZnVzZWQgYnkgdGhlIHdvcmRpbmcuIFdoYXQgaXMgInRoZSBsYWNrCj4gb2Yg
dGhlIGF1eC1idXMgc3VwcG9ydCIuIEkgZ3Vlc3MgdGhpcyBpcyBkaWZmZXJlbnQgZnJvbSB0aGUg
dmFsaWQKPiByZWFzb24gb2YgInRoZSBwbGF0Zm9ybSB3aGljaCB1c2VzIHRoZSBwYW5lbCBkaWRu
J3Qgd2lyZSB1cCB0aGUgQVVYCj4gYnVzIHByb3Blcmx5IiBidXQgSSdtIG5vdCBzdXJlIGhvdy4g
TWF5YmUgeW91IGNhbiBleHBsYWluPwo+IAo+IEkgZ3Vlc3MgSSdkIHdyaXRlIGl0IGxpa2UgdGhp
czoKPiAKPiAgICAgLyoKPiAgICAgICogRG8gbm90IGFkZCBwYW5lbHMgdG8gdGhlIGxpc3QgYmVs
b3cgdW5sZXNzIHRoZXkgY2Fubm90IGJlIGhhbmRsZWQgYnkKPiAgICAgICogdGhlIGdlbmVyaWMg
ZWRwLXBhbmVsIGNvbXBhdGlibGUuCj4gICAgICAqCj4gICAgICAqIFRoZSBvbmx5IHR3byB2YWxp
ZCByZWFzb25zIGFyZToKPiAgICAgICogLSBiZWNhdXNlIG9mIHRoZSBwYW5lbCBpc3N1ZXMgKGUu
Zy4gYnJva2VuIEVESUQgb3IgYnJva2VuCj4gICAgICAqICAgaWRlbnRpZmljYXRpb24pLgo+ICAg
ICAgKiAtIGJlY2F1c2UgdGhlIHBsYXRmb3JtIHdoaWNoIHVzZXMgdGhlIHBhbmVsIGRpZG4ndCB3
aXJlIHVwIHRoZSBBVVgKPiAgICAgICogICBidXMgcHJvcGVybHkuIE5PVEUgdGhhdCwgdGhvdWdo
IHRoaXMgaXMgYSBtYXJnaW5hbGx5IHZhbGlkIHJlYXNvbiwKPiAgICAgICogICBzb21lIGp1c3Rp
ZmljYXRpb24gbmVlZHMgdG8gYmUgbWFkZSBmb3Igd2h5IHRoZSBwbGF0Zm9ybSBjYW4ndAo+ICAg
ICAgKiAgIHdpcmUgdXAgdGhlIEFVWCBidXMgcHJvcGVybHkuCj4gICAgICAqCj4gICAgICAqIElu
IGFsbCBvdGhlciBjYXNlcyB0aGUgcGxhdGZvcm0gc2hvdWxkIHVzZSB0aGUgYXV4LWJ1cyBhbmQg
ZGVjbGFyZQo+ICAgICAgKiB0aGUgcGFuZWwgdXNpbmcgdGhlICdlZHAtcGFuZWwnIGNvbXBhdGli
bGUgYXMgYSBkZXZpY2Ugb24gdGhlIEFVWAo+ICAgICAgKiBidXMuCj4gICAgICAqLwo+IAo+IFdo
YXQgZG8geW91IHRoaW5rPyBJbiBhbnkgY2FzZSwgaXQgcHJvYmFibHkgZG9lc24ndCBtYXR0ZXIg
bXVjaC4gVGhlCj4gaW1wb3J0YW50IHRoaW5nIGlzIHNvbWUgc29ydCBvZiB3YXJuaW5nIGhlcmUg
dGVsbGluZyBwZW9wbGUgbm90IHRvIGFkZAo+IHRvIHRoZSB0YWJsZS4gSW4gdGhhdCBzZW5zZToK
CkFjaywgSSdsIHVwZGF0ZSB0aGUgd29yZGluZyBpbiBhIHNpbWlsYXIgd2F5LgoKPiAKPiBSZXZp
ZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKLS0gCldp
dGggYmVzdCB3aXNoZXMKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
