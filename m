Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BABE0C07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YzzdLRDmmMIVeVOC6BCw2oX0t0PW/kCO25OKLzjmFA=; b=R2c+mP6fdwZKUL
	/nQ6a1rlqJVM+4mJq297TeTv29cvyHTKM8LFSGTSyb6LVpyVX4IfJK7FMh3La333OOOL3c/G9z9I+
	IV7dfUF3C5bTQCrlNlhBth4sWNq9PMv16w2vThlGICQhgmZyYqRg+utTuyHuajonPwYVy6pVLfjfh
	Ghf90pomDyL35UNUhRgwod93AYv5JKsL6OJPGFepieEyao2UW+eisOMQHtihak2mmLJByXOvXDEBi
	Mcfs8qurph4AQP0d3Pg+TUp0xf7VLBO8ezIH2sUpSU3pu7fgihrLqkAKANEqJTp3Ib3CrrlXDdb0q
	FjraOt+otWRUuTCDkWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7HQ-007icL-Hq; Sat, 24 Sep 2022 15:41:24 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7Da-007ggB-Ht; Sat, 24 Sep 2022 15:37:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 4A8CECE0683;
	Sat, 24 Sep 2022 15:37:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D806C433B5;
	Sat, 24 Sep 2022 15:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664033842;
	bh=LJqi7hLURG62SF1LoG408xJ7v+7sH/SFRfwWeA9i4aI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=k+LoqzRYEcLCkYHXXj1GwxrHDcMQiE3pFk2kFeNL3FxTjjKD6uWA9CJk/k+O6FdFM
	 xtSEFF1xhpvf+E9yGk+CDrY6lRyHi8AqV64aBXxgVMWFPretpSe4jWMbI8PCL9A5IY
	 jsGq0orsAFm6sEO56XYQfvJ12OfQpYfXT3gmJvKkH0IH9DiqqfyzRZpJ5S+Z6wjIwi
	 6NtkJ+gf+fCrAiYaz4O96eKda6KEVuesY3MNzUX7GRPKDwV/fbXpLhwh/n22d0NnRj
	 00W3qhXghhJhDhvv4NG9Ky/ddY5BWFmXcBpr6S/ke5yj7BD06jffBnlWMbWWESj1fM
	 vrKwsP0K1nySg==
Date: Sat, 24 Sep 2022 16:37:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
 <linux-imx@nxp.com>, <linux-iio@vger.kernel.org>, Chunyan Zhang
 <zhang.lyra@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 10/15] iio: adc: vf610_adc: do not use internal iio_dev
 lock
Message-ID: <20220924163724.41e0c504@jic23-huawei>
In-Reply-To: <20220920112821.975359-11-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-11-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_083727_021298_F2D7A2E3 
X-CRM114-Status: GOOD (  29.22  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoxNiArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gSW4gb3JkZXIgdG8gZHJvcCB0aGUgaW50ZXJuYWwgbG9jayB1c2Fn
ZSB3ZSBuZWVkZWQgdHdvIGRpZmZlcmVudCB0aGluZ3M6Cj4gCj4gMSkgVGhlIGZpcnN0IHBsYWNl
IHdoZXJlICdtbG9jaycgd2FzIGJlaW5nIHVzZWQgd2FzIGEgdHlwaWNhbCBjYXNlIHdoZXJlCj4g
aWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIGZpdHMgcGVyZmVjdGx5Lgo+IDIpIEluIHRo
ZSBzZWNvbmQgY2FzZSwgaXQgd2FzIGJlaW5nIHVzZWQgdG8gcHJldmVudCBjb25jdXJyZW50IGFj
Y2Vzc2VzCj4gdG8gdGhlIGRldmljZSBhbmQgc2hhcmVkIGRhdGEgYnV0IG5vdGhpbmcgd2FzIGJl
aW5nIGVuZm9yY2VkIHdpdGgKPiByZWdhcmRzIHRvIGJ1ZmZlcmluZyAoaS5lLCB0aGVyZSB3YXMg
bm90aGluZyBwcmV2ZW50aW5nIGZyb20gY2hhbmdpbmcKPiB0aGUgY29udmVyc2lvbiBtb2RlIHdo
aWxlIGJ1ZmZlcmluZykuIEhlbmNlLCBpbiB0aGlzIGNhc2UsIGEgbmV3IGxvY2sKPiB3YXMgaW50
cm9kdWNlZCBpbiB0aGUgc3RhdGUgc3RydWN0dXJlLgo+IAo+IE5vdGUgdGhhdCB0aGUgZ29hbCBp
cyBub3QgdG8gaW50cm9kdWNlIGFueSBmdW5jdGlvbmFsIGNoYW5nZSBhbmQgdGhhdCBpcwo+IHRo
ZSByZWFzb24gd2h5IGEgbmV3IGxvY2sgd2FzIGludHJvZHVjZWQgdG8gZ3VhcmFudGVlIDIpLgoK
SG1tLiBJZiB3ZSBjYW4gZ2V0IGVub3VnaCByZXZpZXcgb24gdGhpcywgSSdkIHJhdGhlciBjbGFp
bV9kaXJlY3RfbW9kZSgpCmZvciBwYXJ0IDIgZXZlbiB0aG91Z2ggaXQgaXMgYSBmdW5jdGlvbmFs
IGNoYW5nZS4gIEl0J3MgYSBiaXQgdHJpY2t5CmFzIHRoYXQgZnVuY3Rpb24gaGFzIG5vIGVycm9y
IHBhdGhzIGN1cnJlbnRseSBzbyBubyByZWFsIHJlYXNvbiB0aGUgCmNhbGxlciBzaG91bGQgYmUg
ZXhwZWN0aW5nIGVycm9ycyAoZ2VuZXJpYyBjb2RlIHdpbGwgYmUgZmluZSwgYnV0IGdlbmVyaWMK
Y29kZSBkb2Vzbid0IGtub3cgYWJvdXQgdGhpcyBBQkkgZWxlbWVudCBhbnl3YXkpLgoKQSByZXF1
ZXN0IGZvciBhIHJlZmFjdG9yIHByZWN1cnNvciBwYXRjaCBpbiBsaW5lLiAgSXQgd2lsbCBtYWtl
CnRoZSBlbmQgcmVzdWx0IGNsZWFuZXIgSSB0aGluay4KCgo+IAo+IFNpZ25lZC1vZmYtYnk6IE51
bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvaWlvL2FkYy92ZjYx
MF9hZGMuYyB8IDMwICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMu
Ywo+IGluZGV4IGM2YjE2Y2Y2ZTM2Ny4uYjlhZGRkMzEzZWYxIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvaWlvL2FkYy92ZjYxMF9hZGMuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMu
Ywo+IEBAIC03LDYgKzcsNyBAQAo+ICAKPiAgI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJs
ZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdXRl
eC5oPgo+ICAjaW5jbHVkZSA8bGludXgvcHJvcGVydHkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3Bs
YXRmb3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gQEAgLTE1
Niw2ICsxNTcsOSBAQCBzdHJ1Y3QgdmY2MTBfYWRjIHsKPiAgCXZvaWQgX19pb21lbSAqcmVnczsK
PiAgCXN0cnVjdCBjbGsgKmNsazsKPiAgCj4gKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBt
dWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLwo+ICsJc3RydWN0IG11dGV4IGxvY2s7Cj4g
Kwo+ICAJdTMyIHZyZWZfdXY7Cj4gIAl1MzIgdmFsdWU7Cj4gIAlzdHJ1Y3QgcmVndWxhdG9yICp2
cmVmOwo+IEBAIC00NjcsMTEgKzQ3MSwxMSBAQCBzdGF0aWMgaW50IHZmNjEwX3NldF9jb252ZXJz
aW9uX21vZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiAgewo+ICAJc3RydWN0IHZmNjEw
X2FkYyAqaW5mbyA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4gIAo+IC0JbXV0ZXhfbG9jaygmaW5k
aW9fZGV2LT5tbG9jayk7Cj4gKwltdXRleF9sb2NrKCZpbmZvLT5sb2NrKTsKPiAgCWluZm8tPmFk
Y19mZWF0dXJlLmNvbnZfbW9kZSA9IG1vZGU7Cj4gIAl2ZjYxMF9hZGNfY2FsY3VsYXRlX3JhdGVz
KGluZm8pOwo+ICAJdmY2MTBfYWRjX2h3X2luaXQoaW5mbyk7Cj4gLQltdXRleF91bmxvY2soJmlu
ZGlvX2Rldi0+bWxvY2spOwo+ICsJbXV0ZXhfdW5sb2NrKCZpbmZvLT5sb2NrKTsKPiAgCj4gIAly
ZXR1cm4gMDsKPiAgfQo+IEBAIC02MzUsMTIgKzYzOSwxMSBAQCBzdGF0aWMgaW50IHZmNjEwX3Jl
YWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAlzd2l0Y2ggKG1hc2spIHsKPiAg
CWNhc2UgSUlPX0NIQU5fSU5GT19SQVc6Cj4gIAljYXNlIElJT19DSEFOX0lORk9fUFJPQ0VTU0VE
Ogo+IC0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+IC0JCWlmIChpaW9fYnVmZmVy
X2VuYWJsZWQoaW5kaW9fZGV2KSkgewo+IC0JCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxv
Y2spOwo+IC0JCQlyZXR1cm4gLUVCVVNZOwo+IC0JCX0KPiArCQlyZXQgPSBpaW9fZGV2aWNlX2Ns
YWltX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7Cj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJl
dDsKPiAgCj4gKwkJbXV0ZXhfbG9jaygmaW5mby0+bG9jayk7Cj4gIAkJcmVpbml0X2NvbXBsZXRp
b24oJmluZm8tPmNvbXBsZXRpb24pOwo+ICAJCWhjX2NmZyA9IFZGNjEwX0FEQ19BRENIQyhjaGFu
LT5jaGFubmVsKTsKPiAgCQloY19jZmcgfD0gVkY2MTBfQURDX0FJRU47Cj4gQEAgLTY0OCwxMSAr
NjUxLDEzIEBAIHN0YXRpYyBpbnQgdmY2MTBfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlv
X2RldiwKPiAgCQlyZXQgPSB3YWl0X2Zvcl9jb21wbGV0aW9uX2ludGVycnVwdGlibGVfdGltZW91
dAo+ICAJCQkJKCZpbmZvLT5jb21wbGV0aW9uLCBWRjYxMF9BRENfVElNRU9VVCk7Cj4gIAkJaWYg
KHJldCA9PSAwKSB7Cj4gLQkJCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJ
CW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7CgpUaGUgZXJyb3IgcGF0aHMgaW4gaGVyZSBhcmUg
Y29tcGxleC4gSSdkIHB1bGwgdGhlIHdob2xlIG9mIHRoZQpjYXNlIGJsb2NrIG91dCB0byBhIG5l
dyBmdW5jdGlvbiBpbiBhIHByZWN1cnNvciBwYXRjaCBhbmQKdGhlbiB5b3UgY2FuIGFkZCB0aGUg
bmV3IGxvY2tpbmcgd2l0aCBhIGdvdG8gdW5sb2NrOyBwYXR0ZXJuLgoKPiArCQkJaWlvX2Rldmlj
ZV9yZWxlYXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7Cj4gIAkJCXJldHVybiAtRVRJTUVET1VU
Owo+ICAJCX0KPiAgCQlpZiAocmV0IDwgMCkgewo+IC0JCQltdXRleF91bmxvY2soJmluZGlvX2Rl
di0+bWxvY2spOwo+ICsJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOwo+ICsJCQlpaW9fZGV2
aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUoaW5kaW9fZGV2KTsKPiAgCQkJcmV0dXJuIHJldDsKPiAg
CQl9Cj4gIAo+IEBAIC02NzEsMTEgKzY3NiwxMyBAQCBzdGF0aWMgaW50IHZmNjEwX3JlYWRfcmF3
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAo+ICAJCQlicmVhazsKPiAgCQlkZWZhdWx0
Ogo+IC0JCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCQltdXRleF91bmxv
Y2soJmluZm8tPmxvY2spOwo+ICsJCQlpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUoaW5k
aW9fZGV2KTsKPiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAkJfQo+ICAKPiAtCQltdXRleF91bmxv
Y2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7Cj4g
KwkJaWlvX2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7Cj4gIAkJcmV0dXJu
IElJT19WQUxfSU5UOwo+ICAKPiAgCWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FMRToKPiBAQCAtODEy
LDYgKzgxOSw3IEBAIHN0YXRpYyBpbnQgdmY2MTBfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIAo+ICAJaW5mbyA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4gIAlpbmZv
LT5kZXYgPSAmcGRldi0+ZGV2Owo+ICsJbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7Cj4gIAo+ICAJ
aW5mby0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAg
CWlmIChJU19FUlIoaW5mby0+cmVncykpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
