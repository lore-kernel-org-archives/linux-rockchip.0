Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B26C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 15:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUlQhqjUcschl81NZMKCFlmh0aDmrrkInzlu5/ECf4g=; b=gEf0AqzpiEySNB
	CufjGfLeBjbw9vdLjtFZo0K7lVntoKs0cz4jn92/hcT0tD9ah6/HJ0K9OgSp4pIhXeLOEyHYFIMoK
	Jo1tCCjPxCN9uFc6OxKOBmXcmwZrUeHJ9a8hxVgdp+DyUQCMFPMGH35b4megw/aZ54xIt0vjkWH8q
	ESE92PpxherOPEo8Vl0xE2Io51D4GNoY8ht6MxBafXaeDOZwY0XCqz176DyjP0mngkslpu7QnjJvZ
	bu9D9MH4JU8tIcrrZOVb9PSRcGUG/B4BVZMj4uo6wfteuViZNVSHPg5TLPMzpVL4l+7ksgNNG4X5J
	gAGBjqYVjpZwjMeOGsKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrhuQ-007rMz-Mp; Thu, 19 May 2022 15:17:50 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrha2-007doV-Nm
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 14:56:50 +0000
Received: by mail-wr1-x434.google.com with SMTP id w4so7515131wrg.12
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 07:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ISOD/iOKAclCtwdMM3vHb2RLq5kMYU15+WUUo5PmRkY=;
 b=aRFLYF8im2UJauIw+M3XDEaVIqu4s+D3bM8F+kuxdKMYALzDjrjz5c3q9mHyung5Z4
 4vqJinDiLzxL9HhDCabldxtFGZmov7ScXe1epX9h/+fszrIihrvEofasO9PALsx9eL+N
 rqZPk4UTCtgFI477afLdCgOxXjTUfCzUGRaUWKUJKKnHQQpYGD30g6ZI4DLD6YNHdWh1
 stZxx3MyzpJkvcSAF6HAXaymLOVtdryp/a4/6deK+gSyQ+bi1yZvAWMRNHSz9dDOlfk6
 +SvXvYUPG+iDCKprIyhSASPCLqWW+gL8NnhKe4jQRLE1F9S+mlBote7xQCcQ/KSfn1vj
 LS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ISOD/iOKAclCtwdMM3vHb2RLq5kMYU15+WUUo5PmRkY=;
 b=YJnUwcVNf3vN29vrulTsgI2dqdUFrPZtt9JGiK/OxOGZkROAUI67O6BWZSQ4YjIuEr
 aQasFc1wCpNDRWntJFWe/ceiyfznJR2buDkFwS3+q8hNoFghrkoSNIQ5Pw30HCY3bn9b
 RFrypRshYuA5Y0IrllB8mAVzF2jt3+hTLEqGMCM9xMn28cgJvamnKkuaU8bYooEVk5y+
 kT3+9F3FiMVsDaok2cou2J8FK3Pm+SNhZsq79feEtr+nQD6PP6COlv0BBpsDR6bmTIP2
 kZ3zb5i5TVFuUvH/pEK6+nOwgJSrXUujGt75PPPaPwXEegIAGiFFJzWxoSSQBSLhWdcD
 goIA==
X-Gm-Message-State: AOAM532isvycxLhVHrNjpx5LDrQ4I+aOjAnR4fb/6u8qY04LR9Py1vSg
 IuDW+Wd+TCfEwsjeuurJrNr0Ng==
X-Google-Smtp-Source: ABdhPJzMhUAdMlupNmGxdoHnWFBGW1dFlprM8B+x4BKJigotU1z6k2KLJ8TJhtJ4mxW2IKsvoWEXOg==
X-Received: by 2002:adf:eec9:0:b0:20d:5f7:f54a with SMTP id
 a9-20020adfeec9000000b0020d05f7f54amr4384973wrp.714.1652972203824; 
 Thu, 19 May 2022 07:56:43 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88]) by smtp.gmail.com with ESMTPSA id
 r2-20020adfa142000000b0020d0c37b350sm6216175wrr.27.2022.05.19.07.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 07:56:43 -0700 (PDT)
Date: Thu, 19 May 2022 15:56:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Caesar Wang <wxt@rock-chips.com>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Subject: Re: [U-Boot] [PATCH 2/2] rockchip: rk3399: rockpro64: enable force
 power on reset workaround
Message-ID: <YoZaqRCFgBm/ihZB@google.com>
References: <20191128061433.1952869-2-anarsoul@gmail.com>
 <1ab40490-a232-b5fd-6180-17867aa6a053@rock-chips.com>
 <CA+E=qVeNWEJTfQ_30Uxv=qFixMR-rbYOW_HCtx83bqmfNWb9dg@mail.gmail.com>
 <fe3e93dc-16e5-eaf7-94a5-def1dde85c86@rock-chips.com>
 <CA+E=qVdMA_8wQcXzzf47Pi+dUigLBsOzOydhz+DZbvr8+9+PCg@mail.gmail.com>
 <6C83A835-37D3-4E48-BB08-024BB2703FB8@gmail.com>
 <YoTerAfKU5S04nfk@google.com>
 <CAMdYzYpRybPjzkhoN0fMNMEdeMAO4zV7kaVVaxUk+=KWg8SK1A@mail.gmail.com>
 <YoX9ChRGuKtn2AVX@google.com>
 <CAMdYzYobPDBuxiKNDg1UA6jG7mXmj527-Gj6=wt9vBAcbNa++A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYobPDBuxiKNDg1UA6jG7mXmj527-Gj6=wt9vBAcbNa++A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_075646_870989_8EAEC418 
X-CRM114-Status: GOOD (  40.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PiA+ID4gPiBJdCdzIG5vdCBjbGVhciBob3cgdGhpcyBpc3N1ZSAocHJlc2VudCAzIHllYXJzIGFn
bykgd2FzIGZpbmFsbHkKPiA+ID4gPiByZXNvbHZlZC4gIEZyb20gdGhlIHRocmVhZCwgaXQgbG9v
a3MgYXMgaWYgdGhlIGZpeCBtaWdodCBoYXZlIG1hZGUgaXRzCj4gPiA+ID4gd2F5IGludG8gQVRG
LCBidXQgSSdtIDg3LjYlIHN1cmUgQVRGIGlzIG5vdCBydW5uaW5nIG9uIHRoaXMgcGxhdGZvcm0K
PiA+ID4gPiAoeWV0KS4KPiA+ID4KPiA+ID4gVGhlIHJrMzM5OSBTb0MgaGFzIGEgaGFyZHdhcmUg
YnVnIHdoZXJlIHRoZSBwb3dlciBkb21haW5zIGFyZSBub3QKPiA+ID4gcmVzZXQgdXBvbiBhIHNv
ZnQgcmVzZXQuIFRoaXMgbGVhZHMgdG8gc2l0dWF0aW9ucyBsaWtlIHRoaXMgb25lIHdoZXJlCj4g
PiA+IHBvd2VyIGRvbWFpbnMgYXJlIHNodXQgZG93biBkdXJpbmcgc2h1dGRvd24gYnV0IGFyZW4n
dCByZXN0b3JlZCBvbgo+ID4gPiByZWJvb3QuCj4gPgo+ID4gSSBhc3N1bWUgdGhpcyBpc24ndCBz
b21ldGhpbmcgd2UgY2FuIHBhdGNoIGluIHRoZSBrZXJuZWwgZHJpdmVyPwo+IAo+IEFzIGZhciBh
cyBJIGtub3cgaXQncyBiZWluZyB3b3JrZWQgb24gYnkgb3RoZXJzLCBJIGhhdmUgc29tZSBpZGVh
cyBmb3IKPiB0aGlzIGFzIHdlbGwgYnV0IEkndmUgYmVlbiBmb2N1c2VkIG9uIHJrMzU2eCBsYXRl
bHkuCgpUaGFua3MgZm9yIHRoZSB1cGRhdGUuCgo+ID4gPiBNYWlubGluZSBURi1BIHdhcyBwYXRj
aGVkIHRvIGZvcmNlIGFsbCBwb3dlciBkb21haW5zIG9ubGluZQo+ID4gPiB3aGVuIGEgc29mdCBy
ZWJvb3QgaXMgdHJpZ2dlcmVkLCB3aGljaCBzb2x2ZWQgdGhhdCBpc3N1ZS4KPiA+Cj4gPiBPa2F5
LCB0aGlzIGlzIHdoYXQgSSBmaWd1cmVkLgo+ID4KPiA+ID4gV2hhdCBwYXJ0aWN1bGFyIGlzc3Vl
cyBhcmUgeW91IGhhdmluZyBpbml0aWFsaXppbmcgbW9kZXJuIHUtYm9vdCBvbgo+ID4gPiB0aGlz
IGRldmljZT8KPiA+Cj4gPiBUaGlzIGlzIHRoZSBvdXRwdXQ6IGh0dHBzOi8vcGFzdGViaW4udWJ1
bnR1LmNvbS9wL2Q1RG1zU0JuclIvCj4gPgo+ID4gU3BlYWtpbmcgd2l0aCBvbmUgb2YgdGhlIGd1
eXMgd2hvIHN1cHBvcnRzIFJvY2tQaSA0IGluIEFPU1AsIGhlCj4gPiBzdXNwZWN0cyB0aGUgRERS
IHNldHRpbmdzLiAgQXBwYXJlbnRseSBzZXR0aW5ncyBmb3Igb2xkZXIgU29Dcwo+ID4gc29tZXRp
bWVzIGdldCBjbG9iYmVyZWQgd2hlbiBzdXBwb3J0IGZvciBuZXdlciBTb0NzIGlzIGFkZGVkLgo+
IAo+IFRoZSByazMzOTkgVFBMIGNvZGUgaXMgc3BlY2lmaWMgdG8gdGhlIHJrMzM5OSBhbmQgaXQg
cmVhbGx5IGhhc24ndAo+IGJlZW4gdG91Y2hlZCBtdWNoIHJlY2VudGx5LiBJJ20gdXNpbmcgdGhl
IGxhdGVzdCBNYWlubGluZSBVLUJvb3Qgb24KPiBib3RoIG15IFJvY2twcm82NCBhbmQgUGluZXBo
b25lLVByby4gSSBkb24ndCBzZWUgVEYtQSBiZWluZyBsb2FkZWQsCj4gd2hpY2ggc2hvdWxkIGhh
cHBlbiBiZXR3ZWVuOgo+IAo+IFRyeWluZyB0byBib290IGZyb20gQk9PVFJPTQo+IFJldHVybmlu
ZyB0byBib290IFJPTS4uLgo+IAo+IE90aGVyd2lzZSBpdCBqdXN0IGxvb2tzIGxpa2UgdGhlIFRQ
TCBjb2RlIGRvZXNuJ3QgbGlrZSBiZWluZyBpbiBhCj4gc2luZ2xlIGNoYW5uZWwgY29uZmlndXJh
dGlvbi4gRG9lcyB0aGUgMkdCIG1vZGVsIGp1c3QgZm9yZ28gdGhlIHNlY29uZAo+IHJhbSBjaGlw
PyBPciBpcyB0aGlzIGFjdHVhbGx5IGEgNEdCIG1vZGVsIGFuZCBpdCBpc24ndCBkZXRlY3Rpbmcg
dGhlCj4gc2Vjb25kIGNoaXAgaW4gYm90aCBkb3duc3RyZWFtIGFuZCBtYWlubGluZT8gQ291bGQg
eW91IGluY2x1ZGUgdGhlCj4gVFBML1NQTCBwb3J0aW9uIG9mIGRvd25zdHJlYW0ncyBvdXRwdXQ/
CgpUUEwvU1BMIGFyZSBtb3N0bHkgc2lsZW50IG9uIHRoZSBkb3duc3RyZWFtIGJ1aWxkOgoKaHR0
cHM6Ly9wYXN0ZWJpbi51YnVudHUuY29tL3AvbTJiQmRqRjhXcS8KCk5vdCBzdXJlIGlmIGl0IGhl
bHBzIGF0IGFsbCwgYnV0IEFybUJpYW4gaXMgcHJldHR5IG5vaXN5OgoKaHR0cHM6Ly9wYXN0ZWJp
bi51YnVudHUuY29tL3AvZmRQam1tcUJETS8KCj4gPiBJIGFtIHlldCB0byBpbnZlc3RpZ2F0ZSB0
aGUgdS1ib290IHN0b3J5IGluIGFueSBkZXRhaWwuCj4gPgo+ID4gSXQncyBvbiBteSBUT0RPIGxp
c3QgZm9yIHRvZGF5Lgo+ID4KPiA+ID4gSXMgdGhlcmUgYSBwYXJ0aWN1bGFyIHJlYXNvbiBpdCBp
c24ndCB1c2luZyBNYWlubGluZSBURi1BPwo+ID4KPiA+IFdlJ3JlIG5vdCB1c2luZyBUcnVzdGVk
IEZpcm13YXJlIHlldC4KPiAKPiBUaGlzIHBsYXRmb3JtIGRvZXMgbm90IHdvcmsgYXQgYWxsIHdp
dGhvdXQgVEYtQS4gT3B0ZWUgaXMgb3B0aW9uYWwuCj4gRWl0aGVyIHlvdSBhcmUgdXNpbmcgdGhl
IGRvd25zdHJlYW0gYmxvYiBmcm9tIFJvY2tjaGlwIG9yIE1haW5saW5lCj4gYnVpbHQgeW91cnNl
bGYuIFBlcnNvbmFsbHkgSSBwcmVmZXIgdXNpbmcgTWFpbmxpbmUgZXZlcnl0aGluZy4gSWYgeW91
Cj4gYnVpbGQgTWFpbmxpbmUgVS1Cb290IHdpdGhvdXQgVEYtQSBpdCB3aWxsIHRocm93IGEgd2Fy
bmluZyBhdCB0aGUgZW5kCj4gdGhhdCBzYXlzIHRoZSBjcmVhdGVkIGJpbmFyeSBpcyBub24tZnVu
Y3Rpb25hbC4KClJpZ2h0LiAgUGxheWVkIGEgbG90IHdpdGggdGhpcyB0b2RheS4KCk91ciBidWls
ZCB3YXMgdXNpbmcgVEYtQSB3aGljaCB3YXMgYnVpbHQtaW4gdG8gdGhlIHByaW1hcnkgbG9hZGVy
LgoKSSBoYWQgMiBpbnRlcmVzdGluZyByZXN1bHRzIHRvZGF5LiAgTm8gaWRlYSBob3cgdG8gZXhw
bGFpbiB0aGVtLgoKRmlyc3Qgb25lIHdhcyB3aXRoIE1haW5saW5lIHUtYm9vdCBhbmQgTWFpbmxp
bmUgVEYtQSwgd2hpY2ggZm91bmQsIGJ1dAp3YXMgc2VlbWluZ2x5IHVuYWJsZSB0byBib290IHRo
ZSBrZXJuZWw6CgpodHRwczovL3Bhc3RlYmluLnVidW50dS5jb20vcC85SFJoUHlmallLLwoKVGhl
IHNlY29uZCBpbnRlcmVzdGluZyByZXN1bHQgSSBoYWQgd2FzIHVzaW5nIG91ciBkb3duc3RyZWFt
IHUtYm9vdAp3aXRoIE1haW5saW5lIFRGLUEuICBJdCBib290ZWQgcGVyZmVjdGx5IGZyb20gY29s
ZCwgYnV0IG1hbmFnZWQgdG8gZ2V0CnN0dWNrIGluIHRoZSBUUEwgb24gc29mdCByZWJvb3QgaW4g
YSB2ZXJ5IHNpbWlsYXIgd2F5IHRvIHRoZSBvbmUgSQpyZXBvcnRlZCBlYXJsaWVyIHdoZW4gbm90
IGJvb3Rpbmcgd2l0aCBURi1BICgiQ2hhbm5lbCAxOiBjb2wgZXJyb3IiKToKCmh0dHBzOi8vcGFz
dGViaW4udWJ1bnR1LmNvbS9wL2h3bUJ6eERCZ2MvCgpUaGFua3MgYWdhaW4gZm9yIHlvdXIgaW5z
aWdodC4KCktpbmQgcmVnYXJkcywKTGVlCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClByaW5j
aXBhbCBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
