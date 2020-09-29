Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46FEEC4727D
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 22:05:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACD422083B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 22:05:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eWrZs0op";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExW/TGW1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ACD422083B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JT7GKUanQ6GLHlmrcpU/TmZL3b5Cjs0CAI0rcojctkA=; b=eWrZs0opWk8rXUc7tJ3H+Firo
	SOnKjfmHVQzcotsjAzfEeVbvXGLVl089FRAGYyjn5vorpEI+/JbMPD9+ePd4zBcn0RxWBqu4qEeBq
	7YuSTFgDMmY/c0y9KZfqtnkSj8k0waFas+pNgFY6DGXwbfk6q3FOOUjqUr4ATxaLzN79YRxGim07H
	VzAIabXgJ46QARChWVU8YoMDZ00M/N/iGDlXJ/vMk4YFDyBQeyq33f2lLH+3B49rz472Rlf915Spu
	ClfJaQpNpG++7g8Nb3PDEL8rJNa9My5m1up42cHXzkkVwvKdAz0SMKw6woQ24WzYYjEcC/M4kZPyT
	vJZ8TcjFA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNNkG-000111-Fx; Tue, 29 Sep 2020 22:05:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNNk5-0000vS-BG; Tue, 29 Sep 2020 22:05:04 +0000
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42D712193E;
 Tue, 29 Sep 2020 22:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601417100;
 bh=gr+yVYr0Sl4GMl1N4skHLcJyeSqKKKYU6g2ajzLcwlM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ExW/TGW1leHeiEWE/h7OHYoUyi3ABqGJWAtY0Tx+HyURl5xQzk846uyuw2gwbMAPI
 F9V41a3PorEJ8szaXYNcZadLPzDohanMK9RArhP1ol7QrWAAWL69UyN8cvvIMzA/kD
 jQl2JlMnxdPHLe98Kce+UE92qjvJwjbDh0e3dblE=
Received: by mail-oi1-f177.google.com with SMTP id v20so7268917oiv.3;
 Tue, 29 Sep 2020 15:05:00 -0700 (PDT)
X-Gm-Message-State: AOAM533V38q+q8HfPu8OLZUFkblrxuHm63lk5+oIl1M2FKZkEqpjLxYH
 5Wr5hxqRCe3g1ejfX0Qm+e3PleTDu9rFKF7B8Q==
X-Google-Smtp-Source: ABdhPJy7HFSkLbBUm1iGn3/cO4830XaBZgr25Eags1ho3JFqEZMBiYnBZWJoUq2nzONzsiymyBLAEHfF5AsS3XocfSU=
X-Received: by 2002:aca:7543:: with SMTP id q64mr4024058oic.147.1601417099365; 
 Tue, 29 Sep 2020 15:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200925211513.1701254-1-kw@linux.com>
 <20200929202331.GA2567309@bjorn-Precision-5520>
In-Reply-To: <20200929202331.GA2567309@bjorn-Precision-5520>
From: Rob Herring <robh@kernel.org>
Date: Tue, 29 Sep 2020 17:04:47 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+7QHzMcZ1aJW36fX99-dveJAxML9_DQtaavAGjxun9Lw@mail.gmail.com>
Message-ID: <CAL_Jsq+7QHzMcZ1aJW36fX99-dveJAxML9_DQtaavAGjxun9Lw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: Unify ECAM constants in native PCI Express drivers
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_180501_559479_DEC3D0A9 
X-CRM114-Status: GOOD (  30.32  )
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
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMjksIDIwMjAgYXQgMzoyMyBQTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBTZXAgMjUsIDIwMjAgYXQgMDk6MTU6MTNQTSAr
MDAwMCwgS3J6eXN6dG9mIFdpbGN6ecWEc2tpIHdyb3RlOgo+ID4gVW5pZnkgRUNBTS1yZWxhdGVk
IGNvbnN0YW50cyBpbnRvIGEgc2luZ2xlIHNldCBvZiBzdGFuZGFyZCBjb25zdGFudHMKPiA+IGRl
ZmluaW5nIG1lbW9yeSBhZGRyZXNzIHNoaWZ0IHZhbHVlcyBmb3IgdGhlIGJ5dGUtbGV2ZWwgYWRk
cmVzcyB0aGF0IGNhbgo+ID4gYmUgdXNlZCB3aGVuIGFjY2Vzc2luZyB0aGUgUENJIEV4cHJlc3Mg
Q29uZmlndXJhdGlvbiBTcGFjZSwgYW5kIHRoZW4KPiA+IG1vdmUgbmF0aXZlIFBDSSBFeHByZXNz
IGNvbnRyb2xsZXIgZHJpdmVycyB0byB1c2UgbmV3bHkgaW50cm9kdWNlZAo+ID4gZGVmaW5pdGlv
bnMgcmV0aXJpbmcgYW55IGRyaXZlci1zcGVjaWZpYyBvbmVzLgo+ID4KPiA+IFRoZSBFQ0FNICgi
RW5oYW5jZWQgQ29uZmlndXJhdGlvbiBBY2Nlc3MgTWVjaGFuaXNtIikgaXMgZGVmaW5lZCBieSB0
aGUKPiA+IFBDSSBFeHByZXNzIHNwZWNpZmljYXRpb24gKHNlZSBQQ0kgQmFzZSBTcGVjaWZpY2F0
aW9uLCBSZXZpc2lvbiA1LjAsCj4gPiBWZXJzaW9uIDEuMCwgU2VjdGlvbiA3LjIuMiwgcC4gNjc2
KSwgdGh1cyBtb3N0IGhhcmR3YXJlIHNob3VsZCBpbXBsZW1lbnQKPiA+IGl0IHRoZSBzYW1lIHdh
eS4gIE1vc3Qgb2YgdGhlIG5hdGl2ZSBQQ0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMKPiA+
IGRlZmluZSB0aGVpciBFQ0FNLXJlbGF0ZWQgY29uc3RhbnRzLCBtYW55IG9mIHRoZXNlIGNvdWxk
IGJlIHNoYXJlZCwgb3IKPiA+IHVzZSBvcGVuLWNvZGVkIHZhbHVlcyB3aGVuIHNldHRpbmcgdGhl
IC5idXNfc2hpZnQgZmllbGQgb2YgdGhlIHN0cnVjdAo+ID4gcGNpX2VjYW1fb3BzLgo+ID4KPiA+
IEFsbCBvZiB0aGUgbmV3bHkgYWRkZWQgY29uc3RhbnRzIHNob3VsZCByZW1vdmUgYW1iaWd1aXR5
IGFuZCByZWR1Y2UgdGhlCj4gPiBudW1iZXIgb2Ygb3Blbi1jb2RlZCB2YWx1ZXMsIGFuZCBhbHNv
IGNvcnJlbGF0ZSBtb3JlIHN0cm9uZ2x5IHdpdGggdGhlCj4gPiBkZXNjcmlwdGlvbnMgaW4gdGhl
IGFmb3JlbWVudGlvbmVkIHNwZWNpZmljYXRpb24gKHNlZSBUYWJsZSA3LTEKPiA+ICJFbmhhbmNl
ZCBDb25maWd1cmF0aW9uIEFkZHJlc3MgTWFwcGluZyIsIHAuIDY3NykuCj4gPgo+ID4gVGhlcmUg
aXMgbm8gY2hhbmdlIHRvIGZ1bmN0aW9uYWxpdHkuCj4KPiBJIGxpa2UgdGhpcyBhIGxvdC4gIEEg
ZmV3IG1pbm9yIGNvbW1lbnRzIGJlbG93Lgo+Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWFsLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtYWwuYwo+ID4gQEAgLTc2LDcgKzc2LDcgQEAgc3RhdGljIGludCBhbF9wY2llX2luaXQoc3Ry
dWN0IHBjaV9jb25maWdfd2luZG93ICpjZmcpCj4gPiAgfQo+ID4KPiA+ICBjb25zdCBzdHJ1Y3Qg
cGNpX2VjYW1fb3BzIGFsX3BjaWVfb3BzID0gewo+ID4gLSAgICAgLmJ1c19zaGlmdCAgICA9IDIw
LAo+ID4gKyAgICAgLmJ1c19zaGlmdCAgICA9IFBDSUVfRUNBTV9CVVNfU0hJRlQsCj4gPiAgICAg
ICAuaW5pdCAgICAgICAgID0gIGFsX3BjaWVfaW5pdCwKPiA+ICAgICAgIC5wY2lfb3BzICAgICAg
PSB7Cj4gPiAgICAgICAgICAgICAgIC5tYXBfYnVzICAgID0gYWxfcGNpZV9tYXBfYnVzLAo+ID4g
QEAgLTEzOCw4ICsxMzgsNiBAQCBzdHJ1Y3QgYWxfcGNpZSB7Cj4gPiAgICAgICBzdHJ1Y3QgYWxf
cGNpZV90YXJnZXRfYnVzX2NmZyB0YXJnZXRfYnVzX2NmZzsKPiA+ICB9Owo+ID4KPiA+IC0jZGVm
aW5lIFBDSUVfRUNBTV9ERVZGTih4KSAgICAgICAgICAgKCgoeCkgJiAweGZmKSA8PCAxMikKPiA+
IC0KPiA+ICAjZGVmaW5lIHRvX2FsX3BjaWUoeCkgICAgICAgICAgICAgICAgZGV2X2dldF9kcnZk
YXRhKCh4KS0+ZGV2KQo+ID4KPiA+ICBzdGF0aWMgaW5saW5lIHUzMiBhbF9wY2llX2NvbnRyb2xs
ZXJfcmVhZGwoc3RydWN0IGFsX3BjaWUgKnBjaWUsIHUzMiBvZmZzZXQpCj4gPiBAQCAtMjI4LDcg
KzIyNiw3IEBAIHN0YXRpYyB2b2lkIF9faW9tZW0gKmFsX3BjaWVfY29uZl9hZGRyX21hcChzdHJ1
Y3QgYWxfcGNpZSAqcGNpZSwKPiA+ICAgICAgIHZvaWQgX19pb21lbSAqcGNpX2Jhc2VfYWRkcjsK
PiA+Cj4gPiAgICAgICBwY2lfYmFzZV9hZGRyID0gKHZvaWQgX19pb21lbSAqKSgodWludHB0cl90
KXBwLT52YV9jZmcwX2Jhc2UgKwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKGJ1c25yX2VjYW0gPDwgMjApICsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFBDSUVfRUNBTV9CVVMoYnVzbnJfZWNhbSkgKwo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUENJRV9FQ0FNX0RFVkZOKGRldmZuKSk7Cj4KPiBB
cHBhcmVudGx5IHRoaXMgZHJpdmVyIGxldHMgeW91IGxpbWl0IHRoZSBudW1iZXIgb2YgYnVzZXMs
IHNpbmNlIGl0Cj4gZG9lczoKPgo+ICAgdW5zaWduZWQgaW50IGJ1c25yX2VjYW0gPSBidXNuciAm
IHRhcmdldF9idXNfY2ZnLT5lY2FtX21hc2s7Cj4KPiBJJ20gbm90IGVudGlyZWx5IHN1cmUgSSBi
ZWxpZXZlIHRoYXQsIGJ1dCBPSy4gIEl0J3MgYSBzaGFtZSBiZWNhdXNlCj4gaXQgd291bGQgYmUg
cmVhbGx5IG5pY2UgdG8gYmUgYWJsZSB0byB1c2UgUENJRV9FQ0FNX09GRlNFVCgpIGhlcmUKPiAo
d2l0aCBhIGxpdHRsZSByZXdvcmsgb2YgdGhlIGFsX3BjaWVfY29uZl9hZGRyX21hcCgpIGludGVy
ZmFjZSkuCgpJdCdzIGEgYml0IGRpZmZlcmVudCB0aGFuIHRoYXQuIEl0IGFsbG93cyBmb3IgYSBj
b25maWcgd2luZG93IGxlc3MKdGhhbiAyNTZNQiBhbmQgd2lsbCByZWNvbmZpZ3VyZSB0aGUgd2lu
ZG93IHdoZW4gdGhlIGJ1cyBudW1iZXIgaXMKb3V0c2lkZSB0aGUgd2luZG93LiBUaGVyZSdzIG5v
IGR0cyB1cHN0cmVhbSBzbyB3aG8ga25vd3Mgd2hhdCB0aGUKbm9ybWFsIGNhc2UgaXMuIEZvciBh
bGwgSSBrbm93LCBBbWF6b24gY291bGQgYmUgdXNpbmcgZ2VuZXJpYyBFQ0FNCmRyaXZlciBub3cg
b3Igb25seSBBQ1BJIChub3RlIHRoYXQgYW5vdGhlciBvZGRpdHkgaXMgdGhlIHJvb3QgYnJpZGdl
CmFjY2Vzc2VzIGdvIHRocnUgdGhlIERCSSBpbnRlcmZhY2Ugd2hlcmUgYXMgb3RoZXIgRFdDIGlt
cGxlbWVudGF0aW9ucwp1c2luZyBnZW5lcmljIEVDQU0gdXNlIHRoZSBFQ0FNIHNwYWNlKS4gTWF5
YmUgSm9uYXRoYW4gQ2hvY3JvbiBjYW4KY29tbWVudC4KCkkgdGhpbmsgbGltaXRpbmcgdGhlIGJ1
cyBudW1iZXJzIGJhc2VkIG9uIHRoZSBzaXplIG9mIHRoZSBjb25maWcKd2luZG93IHdvdWxkIGhh
dmUgYmVlbiBiZXR0ZXIgYW5kIHRoYXQncyBhbGlnbmVkIHdpdGggd2hhdCB0aGUgZ2VuZXJpYwpF
Q0FNIGRyaXZlciBkb2VzLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
