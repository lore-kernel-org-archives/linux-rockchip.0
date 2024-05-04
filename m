Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8ACBC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/mG0ZSIfwa2rgSgV7PlZuwvrIv1tervl8PjJj/Wvss=; b=KcYxufftc0pg/Z
	EuFXyYRl2L/huK6D/Qeq4FfmBUPhj6+v8StfoH+VSN2hZ+JicgwEK1xGAUw0jmFILTX+zrIvRJDyX
	53/+uvbGRBRi/S6sbJ/WLV7Uh7vRLzJWFDiLAgHafQEYZlTxaJ332O5jR819qy3gvGBnK14eihh+z
	EuPCCHtPGFoYaMSkMn46chtXKaiEZOLChYQMAsvDnHYaWpr1FTyypPNT/xl2oa52yjhkfggw9mvcq
	Q8M2RxOJ9BxX9hhyFOGqXKxbo+vAV1sJkmdDQlzR13Ay7VvzLeAiLQ8WFtujDWYNznbc3Zv1AWI1F
	VCG5GqBChVhfYbCQaV4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3JG4-00000002YpF-0ITI;
	Sat, 04 May 2024 17:33:12 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3JG1-00000002Yoh-1ng3
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:33:10 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6f44a2d1e3dso545603b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714843988; x=1715448788; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tm+hkjnifsq0PhG6Ap2FjKNJi8qui9XYsXdKzpuswS8=;
        b=hxrtlWZZO40sUNEAP+cVihAB6ZaS214wVD2gIHUg8mFsdr4M9K9IJRHfqRGoZ9ykAu
         YBh2Rc9tv9U2zqf78VpZwyECszqY4oaHFrEpwNaTNVB74ucSpwSUmZgpelR/29+PIszG
         GjVmnHRHRK21YboE6JrUzQcLKBoFL2btB/ZdHRlLE7YVdzs+eLD6+D7Bq2zBcEFWXvIj
         IvktZxvnlWzE48hT4SJqjirfph8n26b3nUljWcEzPcYl1BBz0Uw5QXmxIsnKJjZ0NqDw
         NBdj5Zl6Ki57V0dM2qir07Gju9xDYsK8wK0SrIMWGjI/VJNaLwA5ELnvaWmHf7w6wsD7
         NCNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714843988; x=1715448788;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tm+hkjnifsq0PhG6Ap2FjKNJi8qui9XYsXdKzpuswS8=;
        b=R8bEUNJrU7bOGfERlpTQB/X3YCv0J8jPkWAF75jg9HX2N+CO8XlUNN6JXWggShiqlr
         GQVZvgdOraevLIripvTDq07T0gOBtqRt+yDhc1torr8o7goXkrfczrkZHE0BiPkIiANd
         MqoIutROKWhsV6DH4ATxnpwoSv/BevgfcmTnKui7nLepSUhz85H4lHJ4iFAfnb5gwX7Y
         dmrlNjZLKxozb3o947UHr4GGAbn7ex/JxoaiqSycN58OObQ4agXox/E9EPXJ1UmEIcF2
         PA7fn1YunUgxMqXAfXC3FKx09//F+YEBaE9VCp0xqLDtBZjy67yjH1pNbi65vV4cJmRh
         9XIw==
X-Forwarded-Encrypted: i=1; AJvYcCVV8lNyQXHCVmUq939/Lh+Njf/9qGjYqYitQ0aTaNzqvwMf5cxDaqPmerjwUBoJ/OLCeBNYFwP3roe8q+YehtnPsc9Vqp7QjZoC4ngYw9tP8g8B
X-Gm-Message-State: AOJu0Yy1jcNcpm0i570rnMLNxGVdICVa2VymRNowAsszYmXrhfrZXXui
	fAhxCKIZUY4n9jML/DSxxRipQybNoOfG1m+6GhpyRRTyZFLTgnquO2rR5HCZ5w==
X-Google-Smtp-Source: AGHT+IE71SThGG0rboV5B+ZKojRHaS6qJbGuddDvZeSPOrsqMo/HKBJlduV4Wulkz6De+mWXnuG6lA==
X-Received: by 2002:a05:6a00:4f82:b0:6ed:21b2:cb17 with SMTP id ld2-20020a056a004f8200b006ed21b2cb17mr6741671pfb.4.1714843987657;
        Sat, 04 May 2024 10:33:07 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id z6-20020a633306000000b0061f2dc31b96sm2268114pgz.47.2024.05.04.10.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:33:07 -0700 (PDT)
Date: Sat, 4 May 2024 23:03:00 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 12/14] misc: pci_endpoint_test: Add support for
 rockchip rk3588
Message-ID: <20240504173300.GI4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-12-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-12-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_103309_519368_333858B2 
X-CRM114-Status: GOOD (  27.53  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MDlQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBSb2NrY2hpcCByazM1ODggcmVxdWlyZXMgNjRrIGFsaWdubWVudC4KPiBXaGlsZSB0
aGVyZSBpcyBhbiBleGlzdGluZyBkZXZpY2VfaWQ6dmVuZG9yX2lkIGluIHRoZSBkcml2ZXIgd2l0
aCA2NGsKPiBhbGlnbm1lbnQsIHRoYXQgZGV2aWNlX2lkOnZlbmRvcl9pZCBpcyBhbTY1NCwgd2hp
Y2ggdXNlcyBCQVIyIGluc3RlYWQgb2YKPiBCQVIwIGFzIHRoZSB0ZXN0X3JlZ19iYXIsIGFuZCBh
bHNvIGhhcyBzcGVjaWFsIGlzX2FtNjU0X3BjaV9kZXYoKSBjaGVja3MKPiBpbiB0aGUgZHJpdmVy
IHRvIGRpc2FsbG93IEJBUjAuIEluIG9yZGVyIHRvIGFsbG93IHRlc3RpbmcgYWxsIEJBUnMsIGFk
ZCBhCj4gbmV3IHJrMzU4OCBlbnRyeSBpbiB0aGUgZHJpdmVyLgo+IAo+IFdlIGludGVudGlvbmFs
bHkgZG8gbm90IGFkZCB0aGUgdmVuZG9yIGlkIHRvIHBjaV9pZHMuaCwgc2luY2UgdGhlIHBvbGlj
eQo+IGZvciB0aGF0IGZpbGUgaXMgdGhhdCB0aGUgdmVuZG9yIGlkIGhhcyB0byBiZSB1c2VkIGJ5
IG11bHRpcGxlIGRyaXZlcnMuCj4gCj4gSG9wZWZ1bGx5LCB0aGlzIG5ldyBlbnRyeSB3aWxsIGJl
IHNob3J0LWxpdmVkLCBhcyB0aGVyZSBpcyBhIHNlcmllcyBvbiB0aGUKPiBtYWlsaW5nIGxpc3Qg
d2hpY2ggaW50ZW5kcyB0byBtb3ZlIHRoZSBhZGRyZXNzIGFsaWdubWVudCByZXN0cmljdGlvbnMg
ZnJvbQo+IHRoaXMgZHJpdmVyIHRvIHRoZSBlbmRwb2ludCBzaWRlLgo+IAo+IEFkZCBhIG5ldyBl
bnRyeSBmb3IgcmszNTg4IGluIG9yZGVyIHRvIGFsbG93IHVzIHRvIHRlc3QgYWxsIEJBUnMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgZHJpdmVycy9taXNjL3BjaV9lbmRwb2ludF90ZXN0
LmMgfCAxMSArKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYyBiL2RyaXZl
cnMvbWlzYy9wY2lfZW5kcG9pbnRfdGVzdC5jCj4gaW5kZXggYzM4YTYwODNmMGE3Li5hN2Y1OTNi
NGUzYjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9taXNjL3BjaV9lbmRwb2ludF90ZXN0LmMKPiAr
KysgYi9kcml2ZXJzL21pc2MvcGNpX2VuZHBvaW50X3Rlc3QuYwo+IEBAIC04NCw2ICs4NCw5IEBA
Cj4gICNkZWZpbmUgUENJX0RFVklDRV9JRF9SRU5FU0FTX1I4QTc3NEUxCQkweDAwMjUKPiAgI2Rl
ZmluZSBQQ0lfREVWSUNFX0lEX1JFTkVTQVNfUjhBNzc5RjAJCTB4MDAzMQo+ICAKPiArI2RlZmlu
ZSBQQ0lfVkVORE9SX0lEX1JPQ0tDSElQCQkJMHgxZDg3Cj4gKyNkZWZpbmUgUENJX0RFVklDRV9J
RF9ST0NLQ0hJUF9SSzM1ODgJCTB4MzU4OAo+ICsKPiAgc3RhdGljIERFRklORV9JREEocGNpX2Vu
ZHBvaW50X3Rlc3RfaWRhKTsKPiAgCj4gICNkZWZpbmUgdG9fZW5kcG9pbnRfdGVzdChwcml2KSBj
b250YWluZXJfb2YoKHByaXYpLCBzdHJ1Y3QgcGNpX2VuZHBvaW50X3Rlc3QsIFwKPiBAQCAtOTgw
LDYgKzk4MywxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lbmRwb2ludF90ZXN0X2RhdGEg
ajcyMWVfZGF0YSA9IHsKPiAgCS5pcnFfdHlwZSA9IElSUV9UWVBFX01TSSwKPiAgfTsKPiAgCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VuZHBvaW50X3Rlc3RfZGF0YSByazM1ODhfZGF0YSA9
IHsKPiArCS5hbGlnbm1lbnQgPSBTWl82NEssCj4gKwkuaXJxX3R5cGUgPSBJUlFfVFlQRV9NU0ks
Cj4gK307Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgcGNpX2VuZHBv
aW50X3Rlc3RfdGJsW10gPSB7Cj4gIAl7IFBDSV9ERVZJQ0UoUENJX1ZFTkRPUl9JRF9USSwgUENJ
X0RFVklDRV9JRF9USV9EUkE3NHgpLAo+ICAJICAuZHJpdmVyX2RhdGEgPSAoa2VybmVsX3Vsb25n
X3QpJmRlZmF1bHRfZGF0YSwKPiBAQCAtMTAxNyw2ICsxMDI1LDkgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBwY2lfZGV2aWNlX2lkIHBjaV9lbmRwb2ludF90ZXN0X3RibFtdID0gewo+ICAJeyBQQ0lf
REVWSUNFKFBDSV9WRU5ET1JfSURfVEksIFBDSV9ERVZJQ0VfSURfVElfSjcyMVMyKSwKPiAgCSAg
LmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSZqNzIxZV9kYXRhLAo+ICAJfSwKPiArCXsg
UENJX0RFVklDRShQQ0lfVkVORE9SX0lEX1JPQ0tDSElQLCBQQ0lfREVWSUNFX0lEX1JPQ0tDSElQ
X1JLMzU4OCksCj4gKwkgIC5kcml2ZXJfZGF0YSA9IChrZXJuZWxfdWxvbmdfdCkmcmszNTg4X2Rh
dGEsCj4gKwl9LAo+ICAJeyB9Cj4gIH07Cj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUocGNpLCBwY2lf
ZW5kcG9pbnRfdGVzdF90YmwpOwo+IAo+IC0tIAo+IDIuNDQuMAo+IAoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
