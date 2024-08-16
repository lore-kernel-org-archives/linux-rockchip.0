Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83489C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 07:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLSkdisruhKlS+bgPL/xHxfjMuEoRGkiX2WDImZReXk=; b=F595ia3gUhPTjT
	c+91bwRw/on3ZBFqPu+XYLOJYVxqgJ/tIVW9+V1bdEyHwenviCMWchgSkz8cNh42+hnaXVGqiC39M
	8DBTqE7y2MTahGQ5ui3fhbed0ANd9rK1pYxShpvvBwaW1Bw9ALvZ7kZ4CN80j0vrMLfUbD9Z4eSTM
	/rlObtLj0M1SIUU0CvSmK1SUFYQ9eAPDcT0Wfux5ZXxj4YplabtQpA6/JblTUnFkwLrJek8/kbTzi
	nSRpF+x8YfEg2ZrPIDS+ijHVa+9ibo0M6Cr081kre1hWjs8omgiOEAgjhNPGdgar/ZIaPjDD71K/t
	NPF217qKuFGluQ/Tfj+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1serof-0000000CBvR-0M3I;
	Fri, 16 Aug 2024 07:56:09 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1serlV-0000000CB1T-2Gfg
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 07:52:54 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-70d162eef54so1302849b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 00:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723794772; x=1724399572; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yCqitL2vC4TIDXevMyjj4uRZNh6ztGM5H4Qtombp2RM=;
        b=T89Uf2akZYBuCGpSh3kn7/Wbs8ibcpfIgKQLeF5MhhfmHCqQvk96ykxL2sYzCAnl5u
         NOBmObrdzPJ+r55bcBigp8GiK6BWbaSfWQMGnF2mE1kVZXvK7G6hJpOvIxcVzArySJ6I
         1zxdmRTW+5+stqp2oa+/aJWveNGo7vfA6dKa7Sge3oD/IBqdvnAR74/oGWwGYfhLLX/6
         tSOub48O4Cnw38bQTeuj1FnL53cV2uu2/7bW/d5BOFcyhIh1Z5xCcKvNJ78Gbx/FbABG
         HyNfpuw5KDLkz+VlgTzkVxoWdCQOF0AY+oHwWeTg8mFe6HhOOYF9l0VUgK18M+wDUo/K
         TjjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723794772; x=1724399572;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yCqitL2vC4TIDXevMyjj4uRZNh6ztGM5H4Qtombp2RM=;
        b=QV+fA3SR4fh7uu5FwBt6KORlNYVZYJhJ1ftVVWes+AfwwB6e7eD64vjIlPMkSLZ2Gd
         /C4jVHJz3uFW/anCTLlETQ24SErNQYBHK/XsAAN0Mu48X6q0lnY4uxXagRJ1uprMxlfH
         1vImhckfLp9DbgmuCkVHFsEEFTmibO+gv3TtW0Q6VmYRduldV4DNKmVsZhr4laL790ji
         QDUAL81ZkZWZtyT9aOgw6UcvU0TJW0xon21BsbuxzD12A3BD0dZ57TjDxn7deU6Jxy4D
         wAW9YHybmemuQVcXV0/IsHPttEIgtGIyd0CqMsJVL5Vxe/G596UrBml5b6WTLEtkOEzt
         mxgA==
X-Forwarded-Encrypted: i=1; AJvYcCUHXBerVa2sRemJTPFy54wZxs6ltuO2XlWztVfg0zxCNb5kWhR5ra99k0mrT0z0J8m2JnwwvgvMlfDqSenFG4my+efi74UU3eZPaOJ0CYwSzr0X
X-Gm-Message-State: AOJu0YyoNrvgEYYfwhqey5a41EWpr6vMQnxie0N5WqCYgR4nLbMxQCwd
	BDCbTWwCSzsd3TEcSxH5JWvU2LBEO9OMb/C6K3bHHsQhADxneHVL
X-Google-Smtp-Source: AGHT+IHdnjMLFDrXUew2brTPTbI8QrOzvSdpXJjVxuaYGbaPyCkKr6kIrNP/oBcqOANohn4tjt9yJw==
X-Received: by 2002:a05:6a20:ce48:b0:1c3:ea28:3c0e with SMTP id adf61e73a8af0-1c90502fa13mr2781425637.33.1723794772163;
        Fri, 16 Aug 2024 00:52:52 -0700 (PDT)
Received: from thinkpad ([36.255.17.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f02fa4d5sm20764945ad.41.2024.08.16.00.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 00:52:51 -0700 (PDT)
Date: Fri, 16 Aug 2024 13:22:44 +0530
From: Manivannan Sadhasivam <manisadhasivam.linux@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] scsi: ufs: rockchip: init support for UFS
Message-ID: <20240816075244.sbul4gsaem4skon4@thinkpad>
References: <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
 <20240809062813.GC2826@thinkpad>
 <421d48b7-4aa7-4202-8b5f-9c60916f6ef6@rock-chips.com>
 <20240810092817.GA147655@thinkpad>
 <3b2617f5-acb1-45c6-993c-33249fd19888@rock-chips.com>
 <20240812041051.GA2861@thinkpad>
 <49659932-5caf-433b-a140-664b61617c43@rock-chips.com>
 <20240812165504.GB6003@thinkpad>
 <b91b18fa-7af0-46c0-a3f7-550676b7a222@rock-chips.com>
 <9fd536a9-b0bf-46a6-92c2-503ea16f7fcd@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fd536a9-b0bf-46a6-92c2-503ea16f7fcd@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_005253_605824_230A18DF 
X-CRM114-Status: GOOD (  27.81  )
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

T24gVHVlLCBBdWcgMTMsIDIwMjQgYXQgMDM6MjI6NDVQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
OgoKWy4uLl0KCj4gPiA+ID4gRm9yIHJ1bnRpbWUgUE0gY2FzZSwgaXQncyB0aGUgcG93ZXItZG9t
YWluIGRyaXZlciB3aWxsIHBvd2VyIGRvd24gdGhlCj4gPiA+ID4gY29udHJvbGxlciBhbmQgUEhZ
IGlmIFVGUyBzdGFjayBpcyBub3QgYWN0aXZlIGFueSBtb3Jl77yIYXV0b3N1c3BlbmTvvIkuCj4g
PiA+ID4gCj4gPiA+ID4gRm9yIHN5c3RlbSBQTSBjYXNlLCBpdCdzIHRoZSBTb0MncyBmaXJtd2Fy
ZSB0byBjdXR0aW5nIG9mIGFsbCB0aGUgcG93ZXIKPiA+ID4gPiBmb3IgY29udHJvbGxlci9QSFkg
YW5kIGRldmljZS4KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IEJvdGggY2FzZXMgYXJlIG5vdCBtYXRj
aGluZyB0aGUgZXhwZWN0YXRpb25zIG9mIHtycG0vc3BtfV9sdmwuIFNvCj4gPiA+IHRoZSBwbGF0
Zm9ybQo+ID4gPiAocG93ZXIgZG9tYWluIG9yIHRoZSBmaXJtd2FyZSkgc2hvdWxkIGJlIGZpeGVk
LiBXaGF0IGlmIHRoZSB1c2VyIHNldHMgdGhlCj4gPiA+IHtycG0vc3BtfV9sdmwgdG8gMT8gV2ls
bCB0aGUgcGxhdGZvcm0gcG93ZXIgZG93biB0aGUgY29udHJvbGxlciBldmVuCj4gPiA+IHRoZW4/
IElmCj4gPiA+IHNvLCB0aGVuIEknZCBzYXkgdGhhdCB0aGUgcGxhdGZvcm0gaXMgYnJva2VuIGFu
ZCBzaG91bGQgYmUgZml4ZWQuCj4gPiAKPiA+IE9rLCBpdCBzZWVtcyBJIG5lZWQgdG8gc2V0IHty
cG0vc3BtfV9sdmwgPSA2IGlmIEkgd2FudCBwbGF0Zm9ybSB0byBwb3dlcgo+ID4gZG93biB0aGUg
Y29udHJvbGxlciBmb3IgdWx0cmEgcG93ZXItc2F2aW5nLiBCdXQgSSBzdGlsbCBuZWVkIHRvIGFk
ZCBteQo+ID4gb3duIHN5c3RlbSBQTSBjYWxsYmFjayBpbiB0aGF0IGNhc2UgdG8gcmVjb3Zlcnkg
dGhlIGxpbmsgZmlyc3QuIERvIEkKPiA+IG1pc3VuZGVyc3RhbmQgaXQ/Cj4gPiAKPiA+IEFuZCBm
b3IgdGhlIHVzZXIgd2hvIHNldHMgdGhlIHJwbS9zcG0gbGV2ZWwgdmlhCj4gPiB1ZnNfc3lzZnNf
cG1fbHZsX3N0b3JlKCksIEkgdGhpbmsgdGhlcmUgaXMgbm8gd2F5IHRvIGJsb2NrIGl0IGN1cnJl
bnRseSwKPiA+IGV4Y2VwdCB0aGF0IHdlIG5lZWQgdG8gZml4IHRoZSBwb3dlci1kb21haW4gZHJp
dmVyIGFuZCBGaXJtd2FyZSB0bwo+ID4gcmVzcGVjdCB0aGUgbGV2ZWwgYW5kIGNob29zZSBjb3Jy
ZWN0IHBvbGljeS4KPiA+IAo+ID4gCj4gPiBTbyBpbiBzdW1tYXJ5IGZvciB3aGF0IHRoZSBuZXh0
IHN0ZXAgSSBzaG91bGQgdG86Cj4gPiAoMSkgU2V0IHtycG0vc3BtfV9sdmwgPSA2IGluIGhvc3Qg
ZHJpdmVyIHRvIHJlZmxlY3QgdGhlIGV4cGVjdGF0aW9uCj4gPiAoMikgQWRkIG93biBQTSBjYWxs
YmFja3MgdG8gcmVjb3ZlcnkgdGhlIGxpbmsgdG8gbWVldCB0aGUgZXhwZWN0YXRpb24KPiA+ICgz
KSBGaXggdGhlIGJyb2tlbiBiZWhhdmlvdXIgb2YgUEQgb3IgRmlybXdhcmUgdG8gcmVzcGVjdCB0
aGUgYWN0dWFsCj4gPiBkZXNpcmVkIHBtIGxldmVsIGlmIHVzZXIgY2hhbmdlcyB0aGUgcG0gbGV2
ZWwuCj4gPiAKPiA+IAo+IAo+IFNvcnJ5LCBJIG1pc3VuZGVyc3Rvb2QgeW91ciBjb21tZW50LCBz
byB0aGUgYWN0aW9uIHNob3VsZCBiZQo+ICgxKSBTZXQge3JwbS9zcG19X2x2bCA9IDUgaW4gaG9z
dCBkcml2ZXIgdG8gcmVmbGVjdCB0aGUgZXhwZWN0YXRpb24KPiAoMikgVXNlIHVmc2hjZF9zeXN0
ZW1fc3VzcGVuZC9yZXN1bWUsIGJ1dCBrZWVwIG91ciBvd24gcnVudGltZSBQTQo+IGNhbGxiYWNr
cyBhcyB3ZSBuZWVkIGEgZXh0cmEgc3RlcCB0byBnYXRlIHJlZmNsay4KCk9rLgoKPiAoMykgRml4
IHRoZSBicm9rZW4gYmVoYXZpb3VyIG9mIFBEIG9yIEZpcm13YXJlIHRvIHJlc3BlY3QgdGhlIGFj
dHVhbAo+IGRlc2lyZWQgcG0gbGV2ZWwgaWYgdXNlciBjaGFuZ2VzIHRoZSBwbSBsZXZlbC4KCklm
IHlvdSBkbyB0aGlzLCB0aGVuIHlvdSBkb24ndCBuZWVkICgxKSwgZG9uJ3QgeW91PwoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
