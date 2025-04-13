Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ECCAC3601E
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Apr 2025 14:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrcYXxWnCeBroQte6KV5/0Yn9tc1uiH0aTEXHgxna0g=; b=JlccdFZUJGfUoV
	zFnW7CVL2uQnHf7jHTibaQ1ThX0xwebeAPSnps5QiVrFt73vTmdm0vp55wKD2cKUhygpW9hSIKFX+
	LRoaRH12PiuDS9k66Ugh+ruGFZAOBKpAwaF0gJqiNcDi4e/qd7xg2KHnYUpV90wkeBaoRe+db0l34
	nuakeIAOQQWvjx3Rc6Soj61ouTtFJBXMFJZ0DJjtZHSFGdbJOhpUNXbRIq+ayLgWwA18G43EFwKae
	c4PqfQJgJi1OxvvLEDjr0QGqA7/D60KLY3qXDzMCHYJjDz5InldaD+BwyYrhbqON1JoxFfRTGCxPI
	U41J8OnLCouIfQI9Ac4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3yGD-0000000HGMG-3ZFp;
	Sun, 13 Apr 2025 14:24:37 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3yGB-0000000HGLT-1aYc
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Apr 2025 14:24:36 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-22622ddcc35so46225805ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Apr 2025 07:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744554274; x=1745159074; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1HrAk684WJxvGVi+ClfydabBEME3gjs95+HZox1kC4Q=;
        b=aZ5QxduKzZUNp0bBvOvR0MaeCIulMA9o9qQbNOAL2yZGoUkHAryqyRgb99Zj5lZKjx
         QimJeufXPjqIQjbSz5kvnCeGweCZFyyrBEtTN9ALkdq+ID4ecRs80I0iaDnxoblhUbj6
         RBBg6V/eXURMM5sqjG/dof5n9JLmJcDevI35pTi3SwxTSI+ofGziT/QzabnnqYMrfUEg
         dz2a80sTM4utw/XwdF/uDueAQCafWx3NphPVNFxCClfm6+TpYDIiQk+OOOxwSoW8PtB1
         aEyR+5EHeFM2knYryeXFPl8PVq/Sp/TyOuPBS8Kx3CzW1SspW3CYIPE5im+vlQc3X+BT
         j9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744554274; x=1745159074;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1HrAk684WJxvGVi+ClfydabBEME3gjs95+HZox1kC4Q=;
        b=bsuNKxikdzFJxwdcsubqH9Cer/Zpvm8YVXckqy2a60pIwy4/zxO0wSPRdkK8aH2LOe
         GuHRVCR3MqdVOdIL190wlpfCDb9y/2hA0M3NEQywkCH0x3eZw8/MCpYpN7P3Y/r46Q4E
         KP9o83q1A841f+jqovPePbYPIal7u+Ha/5x9NSLJgO8VUJ+Dk8KIMbFNBx2fvqBvzVkE
         hmTcU/yfmib7um67JAx9571EtIpIA159DH8jMVt6PZsn/myBpMwCUhUVYbYKz+k4d7Mx
         fpiqWSHtNCfLskFLIAoZfb6BJtBBmxCixRjRkR8Kb0qRJvlBTqUmif/3AwAnteqbgu0I
         mLeg==
X-Forwarded-Encrypted: i=1; AJvYcCUYau+CnV7mXNDudk+5dMr0CME5hWD0yCNRqnSN6Ynx1O83mCzGM6TLTGhBDj5JEDWVvJl9koApILr8sANCIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0JUOQeOyElFlLwZlOA/eXsPuu1sNrLsSd5+1mR+VINMNGyL9j
	0w0f1eMkREcsDE6G/Q6MwQl+6sMmTQDFXZGPuPiRYNWtPeshfT6iGj4rT51uPg==
X-Gm-Gg: ASbGnctjqQsBgVafoWM3affSocjk1FMERexSx/sNHzISsZWid+lGvFhc6OrfxDqIRP3
	PvgvKr/1/54PsymOIQMShy4sdY049lb3rsCuz8z9BkC4vP3JnOq81q6wIAgLpgzkLAjddVJoJZh
	/eQg/I9R6TYnuC0dUxSG9XFzNfzAz5bsWhMyNP7HtyWzbZ3prM82B6wXxPzt1KpN2bnO9xSshy7
	lC8dCd7R35NNaMUVnOdptCAK32rMeRZdp+vf9oCOCiQhTCtL9jiVMM9zDzucYfbxpt/SEiBvDad
	BDF0eejGVtHQ3AfR4COSMgh/vJlCetr20iTb3F/Xr5pM3SRkSSPX
X-Google-Smtp-Source: AGHT+IHz8KFcMndBsaWjeHAnKge9iDzq51I0lR4nXYH5jlXhc1fMIqB8kkjeuXzLM3IOTths9xwogQ==
X-Received: by 2002:a17:902:d4cd:b0:224:1609:a747 with SMTP id d9443c01a7336-22bea4bd2c0mr120185085ad.31.1744554274314;
        Sun, 13 Apr 2025 07:24:34 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb4fa9sm82852175ad.179.2025.04.13.07.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 07:24:33 -0700 (PDT)
Date: Sun, 13 Apr 2025 19:54:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
Message-ID: <gogw24yg4lfq77ime7qyurvkef5yvmkkwjxo6xch52fbszibax@diaxredvtcrh>
References: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_YwNt6WUuijKTjt@ryzen>
 <38e69551-cc40-11a9-191f-de9a193c5e51@rock-chips.com>
 <Z_Y7h1vzVCCEiXK6@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_Y7h1vzVCCEiXK6@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_072435_424082_685202F4 
X-CRM114-Status: GOOD (  29.69  )
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

T24gV2VkLCBBcHIgMDksIDIwMjUgYXQgMTE6MTk6MDNBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyBTaGF3biwKPiAKPiBPbiBXZWQsIEFwciAwOSwgMjAyNSBhdCAwNTowOToz
OFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiDlnKggMjAyNS8wNC8wOSDmmJ/mnJ/kuIkg
MTY6MzAsIE5pa2xhcyBDYXNzZWwg5YaZ6YGTOgo+ID4gPiBPbiBXZWQsIEFwciAwOSwgMjAyNSBh
dCAwMjo0MDozM1BNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBJcyB0aGVy
ZSBhbnkgYWR2YW50YWdlIG9mIHVzaW5nIGEgcm9ja2NoaXAgc3BlY2lmaWMgd2F5IHRvIHJlYWQg
bGluayB1cCwKPiA+ID4gcmF0aGVyIHRoYW4ganVzdCByZWFkaW5nIGxpbmsgdXAgdmlhIHRoZSBE
V0MgUENJRV9QT1JUX0RFQlVHMSByZWdpc3Rlcj8KPiA+IAo+ID4gVGhpcyBpcyBhIHZlcnkgZ29v
ZCBxdWVzdGlvbiB3aGljaCB3ZSB0cmllZCBidXQgbWFkZSByZWFsIHByb2R1Y3RzCj4gPiBzdWZm
ZXIgZnJvbSBpdCBmb3IgYSBsb25nIHRpbWUsIGFuZCBmaW5hbGx5IHdlIGZvdW5kIHRoZSByZWFz
b24gYW5kCj4gPiBkaXNjYXJkZWQgaXQuCj4gPiAKPiA+IFF1b3RlZCBmcm9tIERXQyBkYXRhYm9v
aywgc2VjdGlvbiA4LjIuMyBBWEkgQnJpZGdlIEluaXRpYWxpemF0aW9uLAo+ID4gQ2xvY2tpbmcg
YW5kIFJlc2V0Ogo+ID4gCj4gPiAiSW4gUkMgTW9kZSwgeW91ciBBWEkgYXBwbGljYXRpb24gbXVz
dCBub3QgZ2VuZXJhdGUgYW55IE1FTSBvciBJL08KPiA+IHJlcXVlc3RzLCB1bnRpbCB0aGUgaG9z
dCBzb2Z0d2FyZSBoYXMgZW5hYmxlZCB0aGUgTWVtb3J5IFNwYWNlIEVuYWJsZQo+ID4gKE1TRSks
IGFuZCBJTyBTcGFjZSBFbmFibGUgKElTRSkgYml0cyByZXNwZWN0aXZlbHkuIFlvdXIgUkMgYXBw
bGljYXRpb24KPiA+IHNob3VsZCBub3QgZ2VuZXJhdGUgQ0ZHIHJlcXVlc3RzIHVudGlsIGl0IGhh
cyBjb25maXJtZWQgdGhhdCB0aGUgbGluayBpcwo+ID4gdXAgYnkgc2FtcGxpbmcgdGhlIHNtbGhf
bGlua191cCBhbmQgcmRsaF9saW5rX3VwIG91dHB1dHMuIgo+ID4gCj4gPiBRdW90ZWQgZnJvbSBE
V0MgZGF0YWJvb2ssIHNlY3Rpb24gNS41MCBTSUk6IERlYnVnIFNpZ25hbHMKPiA+ICJbMzZdOiBz
bWxoX2xpbmtfdXA6IExUU1NNIHJlcG9ydHMgUEhZIGxpbmsgdXAgb3IgTFRTU00gaXMgaW4KPiA+
IExvb3BiYWNrLkFjdGl2ZSBmb3IgTG9vcGJhY2sgTWFzdGVyIiB3aGljaCByZWZlcnMgdG8KPiA+
IFBDSUVfUE9SVF9ERUJVRzFfTElOS19VUCBwZXIgY29kZS4KPiA+IAo+ID4gVGhlIHRpbWluZyBp
biBkd2MgY29yZSBpcyBkcnZpbmcgc21saF9saW5rX3VwLT5MMC0+cmRsaF9saW5rX3VwLT5GQwo+
ID4gaW5pdChhIGZpeGVkIGRlbGF5KSBmcm9tIElDIHNpbXVsYXRpb24gd2hlbiBsaW5raW5nIHVw
Lgo+ID4gCj4gPiBUaGUgZHdfcGNpZV9saW5rX3VwKCkgd2Fzbid0IHJlbGlhYmx5IHdvcmsgYXMg
ZXhwZWN0ZWQgYnkgbWFzc2l2ZSB0ZXN0Lgo+ID4gVGhlIHByb2JsZW0gaXMgY2xlYXIgZnJvbSBv
dXIgQVNJQyB2aWV3LCB0aGF0IGN4cGxfZGVidWdfaW5mbyBmcm9tIERXQwo+ID4gY29yZSBpcyBt
aXNzaW5nIHJkbGhfbGlua191cC4gY3hwbF9kZWJ1Z19pbmZvWzMyOjYzXSBpcyBpbmRlbnRpY2Fs
IHRvCj4gPiBQQ0lFX1BPUlRfREVCVUcxLCBTbyByZWFkaW5nIFBDSUVfUE9SVF9ERUJVRzEgYW5k
IGNoZWNrCj4gPiBzbWxoX2xpbmtfdXAgaXNuJ3QgZW5vdWdoLgo+ID4gCj4gPiBUaGUgcHJvYmxl
bSB3YXMgaW50cm9kdWNlZCBieSBjb21taXQgMSBhbmQgZml4ZWQgYnkgY29tbWl0IDIgYnV0IG5v
dCB0bwo+ID4gdGhlIGVuZC4gQW5kIGZpbmFsbHkgY29tbWl0IDMgcmVuYW1lIHRoZSByZWdpc3Rl
ciBidXQgbm90IGZpeCBhbnl0aGluZy4KPiA+IAo+ID4gSXQgd2FzIGJyb2tlbiBmcm9tIHRoZSBm
aXJzdCB0aW1lLiBBbnkgZHdjIGNvbnRyb2xsZXJzIHNob3VsZCBub3QgYmUgdXNlCj4gPiB0aGUg
YnVnZ3kgZGVmYXVsdCBtZXRob2QgdG8gY2hlY2sgbGluayB1cCBzdGF0ZSBmcm9tIG91ciB2aWV3
Lgo+ID4gU28gdGhpcydzIHRoZSB3aG9sZSBzdG9yeSBmb3IgaXQsIHdoaWNoIG1heSBoZWxwIHlv
dSB1bmRlcnN0YW5kIHRoZQo+ID4gaW5kZWVkIHByb2JsZW0gYW5kIHdoeSB3ZSByZWludmVudCBy
b2NrY2hpcF9wY2llX2xpbmtfdXAoKSBoZXJlLgo+ID4gCj4gPiBbMV0uIGNvbW1pdCBkYWMyOWU2
YzU0NjAgKCJQQ0k6IGRlc2lnbndhcmU6IEFkZCBkZWZhdWx0IGxpbmsgdXAgY2hlY2sgaWYKPiA+
ICAgICBzdWItZHJpdmVyIGRvZXNuJ3Qgb3ZlcnJpZGUiKQo+ID4gCj4gPiBbMl0uIGNvbW1pdCAw
MWMwNzY3MzJlODIgKCJQQ0k6IGRlc2lnbndhcmU6IENoZWNrIExUU1NNIHRyYWluaW5nIGJpdAo+
ID4gICAgIGJlZm9yZSBkZWNpZGluZyBsaW5rIGlzIHVwIikKPiA+IAo+ID4gWzNdLiBjb21taXQg
NjBlZjRiMDcyYmEwICgiUENJOiBkd2M6IGlteDY6IFNoYXJlIFBIWSBkZWJ1ZyByZWdpc3Rlcgo+
ID4gICAgIGRlZmluaXRpb25zIikKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBkZXRhaWxlZCBhbnN3
ZXIuCj4gCj4gSXQgc2VlbXMgbGlrZSB3ZSBzaG91bGQgcmVhbGx5IGFkZCBhIHdhcm5pbmcgYW5k
IGEgY29tbWVudCBpbgo+IGR3X3BjaWVfbGlua191cCgpLCBzbyB0aGF0IG90aGVycyBkb24ndCBn
ZXQgaGl0IGJ5IHRoaXMgaGFyZCB0byBkZWJ1ZyBpc3N1ZSEKPiAKClJpZ2h0LiBCdXQgSSdtIGFs
c28gd29uZGVyaW5nIGlmIHdlIHNob3VsZCB1c2UgdGhlICdEYXRhIExpbmsgTGF5ZXIgTGluayBB
Y3RpdmUnCmJpdCBpbiBQQ0kgRXhwcmVzcyBDYXBhYmlsaXR5IGZvciBjaGVja2luZyBsaW5rIHVw
LiBRY29tIGRyaXZlciBoYXMgYmVlbiB1c2luZwppdCBmcm9tIHRoZSBzdGFydCBhbmQgdGhlcmUg
YXJlIG5vIHJlcG9ydGVkIGlzc3Vlcy4gV2UgY291bGQgYWRkIHRoaXMgYXMgdGhlCmZpcnN0IGZh
bGxiYWNrIGlmIHRoZSBsaW5rX3VwIGNhbGxiYWNrIGlzIG5vdCBwcm92aWRlZC4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
