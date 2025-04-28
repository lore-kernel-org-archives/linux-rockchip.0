Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFC9CC369D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Apr 2025 03:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tafxTM8JwlxkAtwu6g4D7Sfa/8jwoF+CzwfmG5THnC0=; b=0QoMdr9IXy1hcY
	CL5eI6tU7WNcDZ2Kho5s8kHucvmS9S0FFqiHPQYOPpGzDmJjKZWaO1qWj3mCYBXtF92PZdCzlTibA
	HY+tsjZunolMiT+CKyXxZ8wQ1fmcSEwezu+OFn8opsliuFyoTZqdIf9nCB3j6eOfNyGMZIQnSs3mF
	AgGPEauURe2TzW6oXLKKYDPtnj9Zn6w55uzOqfzR+UBq7S3MU7eSeRXH8V+lqyjXTiJ4h49Za4H73
	0kuT6G0mDgseVWQS5gp+vFeIRWruobmFd9bBD4B/AjoeMMutp1RsUOOPsRvOG5RkEH6TtXDgZNvgH
	5bL57BvYaO9NB6v/NZHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9FCx-00000004Qqj-1Ote;
	Mon, 28 Apr 2025 03:31:03 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9FAW-00000004QU4-26OR;
	Mon, 28 Apr 2025 03:28:33 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-72d3b48d2ffso3908340b3a.2;
        Sun, 27 Apr 2025 20:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745810911; x=1746415711; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=S5Q9fuybEUTDIxLrBP9D0OFcpvP5/dYYz5nqQrm+/wc=;
        b=LlEpt88dTQhwVWQ/Os66CkuzQ24VVea8275qp375KAjlTR5rdlShlYngafy9hTE5bF
         yBFeqlKhuKAyOhy3K9O8Egd83glK+7yJtBkt/yTLxhaez6YjrhJZPLR+MMi+mOl+1RYW
         7e9b3RCna/iA8Gvb7kdD427WZtSyRPYVnajI7Z+fju4yxhq/4PWhdKrmkG4x6bfA4x7D
         0PivWTsm0D1uowtoxTTJGvoN4aBxwQnn6EP7as2qluAaEjP+09TbFCvs/o/6mOhNaUKc
         Jmz3Lingd6CxAMChNE0TgKl7gU7ws/tCc6U9zlOa/YjMJJFHraxms4RwgC8kEZEcTxMM
         uD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745810911; x=1746415711;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S5Q9fuybEUTDIxLrBP9D0OFcpvP5/dYYz5nqQrm+/wc=;
        b=CobdUvWCHVLc0+xhuOcqWEb6oohIBQSPteqCODt0rOKo1oULi3tyBGifAQ1gBX99SG
         8F+Ch752KGZJcflhW/FI/sQCe8FwBUNtcbjOFt+3ExFVeyMLF2BYCcSho4FG5rcfnAgj
         MVJB941t7/ASorjD8LHk3f6/vFuIQJHDqcSOfgxi4xIgWQik0GzWr+WTIFfefVDAu7Fa
         J8XKdimJTfmNGS6jbcByxL2fZZp8LwTLfRDZ+DtpphbnZBOHZ+LkFUS3pSbEhwCbL4By
         yNiN4CD7y5VEYuRp0nmPgyp5gshHdokc8KPs20NgyEbfxxv3zeauz9W1u635nTJdXzTH
         6HDA==
X-Forwarded-Encrypted: i=1; AJvYcCUIC/l1gAPxoXpWEEtvcA5UlH8fki9cRyqA19f/Y2WlWUDCdC/S9M2tLl3GhVGDB6ow2yePAS1FdA17qQVH9fE=@lists.infradead.org, AJvYcCX3/DEId6jYbDv2VA5tltbmmxsuLrUPjdUri9W7FqVDNWtNGWoLZ7efOcB82wwNJ4ULd+Rsb5/bI7nzk5mqeOE+@lists.infradead.org
X-Gm-Message-State: AOJu0Yxm6FhHiteuxWJrN+1L3onHd24ffbKIfWHqoJqjuYLBFVpO6UMq
	yy1/srjuZjfsYMbPGTBud+GoIYAJuxigQhPcB6ikW/ekNtl9Bzky
X-Gm-Gg: ASbGncuKssshcxrRMmaitBHNLrWjP5nByiz6p5foxcZDqAqwm8UJAtsl5C8gBOLlh9D
	ekYFn01VnCDlJmh1ANx1tfSrTwEfFsXiBkhcFFwnJkCTWPkd/u0M6P8HY/bgpWkY+6tqfg2hpLg
	AzwpKFGNwoWOacS+KoZE5I7vF1l2GoJzGyIps66/42ZF+pgmRAr84vAslQ9jWrj3ZoyMb18d/jY
	KxKv+bzmYluFerQu9elMW5YnIKJp3zk06Tn/9Pt7bTsNfMKYgy6rsugscwcixM2vzAyBJCCuvlK
	ypzs2tKQJ14KJH/+sZLum8maAd3DcMk/JzcssIdSXuy7frSw/Y4Xi6U=
X-Google-Smtp-Source: AGHT+IEbxs/4V9TZnrbGIxSSQDdBr6hgNCgTC0sP8McrXgtriENdhKpXL/j3USePpUKA4WH5weOwTg==
X-Received: by 2002:a05:6a21:9984:b0:1f5:8d3b:e272 with SMTP id adf61e73a8af0-2046a404462mr8961207637.1.1745810911645;
        Sun, 27 Apr 2025 20:28:31 -0700 (PDT)
Received: from [192.168.0.69] ([159.196.5.243])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25acc4casm7148852b3a.172.2025.04.27.20.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 20:28:31 -0700 (PDT)
Message-ID: <9e9ff312eb019bce9f6c31ebda4e1aa6b1a91f33.camel@gmail.com>
Subject: Re: [PATCH v4 2/3] PCI: dw-rockchip: Reorganize register and
 bitfield definitions
From: Wilfred Mallawa <wilfred.opensource@gmail.com>
To: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com, 
	bhelgaas@google.com, heiko@sntech.de
Cc: manivannan.sadhasivam@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 	shawn.lin@rock-chips.com, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
Date: Mon, 28 Apr 2025 13:28:24 +1000
In-Reply-To: <20250427125316.99627-3-18255117159@163.com>
References: <20250427125316.99627-1-18255117159@163.com>
	 <20250427125316.99627-3-18255117159@163.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_202832_542755_8E2DDF65 
X-CRM114-Status: GOOD (  12.89  )
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

T24gU3VuLCAyMDI1LTA0LTI3IGF0IDIwOjUzICswODAwLCBIYW5zIFpoYW5nIHdyb3RlOgo+IFJl
Z2lzdGVyIGRlZmluaXRpb25zIHdlcmUgc2NhdHRlcmVkIHdpdGggYW1iaWd1b3VzIG5hbWVzIChl
LmcuLAo+IFBDSUVfUkRMSF9MSU5LX1VQX0NIR0VEIGluIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVT
X01JU0MpIGFuZCBsYWNrZWQKPiBoaWVyYXJjaGljYWwgZ3JvdXBpbmcuIE1hZ2ljIHZhbHVlcyBm
b3IgYml0IG9wZXJhdGlvbnMgcmVkdWNlZCBjb2RlCj4gY2xhcml0eS4KPiAKPiBHcm91cCByZWdp
c3RlcnMgYW5kIHRoZWlyIGFzc29jaWF0ZWQgYml0ZmllbGRzIGxvZ2ljYWxseS4gVGhpcwo+IGlt
cHJvdmVzCj4gbWFpbnRhaW5hYmlsaXR5IGFuZCBhbGlnbnMgdGhlIGNvZGUgd2l0aCBoYXJkd2Fy
ZSBkb2N1bWVudGF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhhbnMgWmhhbmcgPDE4MjU1MTE3
MTU5QDE2My5jb20+Cj4gUmV2aWV3ZWQtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwu
b3JnPgo+IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2Fk
aGFzaXZhbUBsaW5hcm8ub3JnPgo+IC0tLQo+IMKgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jIHwgNDkgKysrKysrKysrKysrLS0tLS0KPiAtLQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IGU3ZDMz
ZDU0NWQ1Yi4uYTc3OGY0ZjYxNTk1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC0zMywyNCArMzMsMzcgQEAKPiDCoAo+IMKgI2Rl
ZmluZSB0b19yb2NrY2hpcF9wY2llKHgpIGRldl9nZXRfZHJ2ZGF0YSgoeCktPmRldikKPiDCoAo+
IC0jZGVmaW5lIFBDSUVfQ0xJRU5UX1JDX01PREUJCUhJV09SRF9VUERBVEVfQklUKDB4NDApCj4g
LSNkZWZpbmUgUENJRV9DTElFTlRfRVBfTU9ERQkJSElXT1JEX1VQREFURSgweGYwLCAweDApCj4g
LSNkZWZpbmUgUENJRV9DTElFTlRfRU5BQkxFX0xUU1NNCUhJV09SRF9VUERBVEVfQklUKDB4YykK
PiAtI2RlZmluZSBQQ0lFX0NMSUVOVF9ESVNBQkxFX0xUU1NNCUhJV09SRF9VUERBVEUoMHgwYywg
MHg4KQo+IC0jZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0MJMHgxMAo+IC0jZGVm
aW5lIFBDSUVfQ0xJRU5UX0lOVFJfTUFTS19NSVNDCTB4MjQKPiAtI2RlZmluZSBQQ0lFX1NNTEhf
TElOS1VQCQlCSVQoMTYpCj4gLSNkZWZpbmUgUENJRV9SRExIX0xJTktVUAkJQklUKDE3KQo+IC0j
ZGVmaW5lIFBDSUVfTElOS1VQCQkJKFBDSUVfU01MSF9MSU5LVVAgfAo+IFBDSUVfUkRMSF9MSU5L
VVApCj4gLSNkZWZpbmUgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQJCUJJVCgxKQo+IC0jZGVmaW5l
IFBDSUVfTElOS19SRVFfUlNUX05PVF9JTlQJQklUKDIpCj4gLSNkZWZpbmUgUENJRV9DTElFTlRf
R0VORVJBTF9DT05UUk9MCTB4MAo+ICsvKiBHZW5lcmFsIENvbnRyb2wgUmVnaXN0ZXIgKi8KPiAr
I2RlZmluZSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTgkJMHgwCj4gKyNkZWZpbmXCoCBQQ0lFX0NM
SUVOVF9SQ19NT0RFCQlISVdPUkRfVVBEQVRFX0JJVCgweDQwKQo+ICsjZGVmaW5lwqAgUENJRV9D
TElFTlRfRVBfTU9ERQkJSElXT1JEX1VQREFURSgweGYwLCAweDApCj4gKyNkZWZpbmXCoCBQQ0lF
X0NMSUVOVF9FTkFCTEVfTFRTU00JSElXT1JEX1VQREFURV9CSVQoMHhjKQo+ICsjZGVmaW5lwqAg
UENJRV9DTElFTlRfRElTQUJMRV9MVFNTTQlISVdPUkRfVVBEQVRFKDB4MGMsIDB4OCkKPiArCj4g
Ky8qIEludGVycnVwdCBTdGF0dXMgUmVnaXN0ZXIgUmVsYXRlZCB0byBMZWdhY3kgSW50ZXJydXB0
ICovCj4gwqAjZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX0xFR0FDWQkweDgKPiArCj4g
Ky8qIEludGVycnVwdCBTdGF0dXMgUmVnaXN0ZXIgUmVsYXRlZCB0byBNaXNjZWxsYW5lb3VzIE9w
ZXJhdGlvbiAqLwo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0MJMHgxMAo+
ICsjZGVmaW5lwqAgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQJQklUKDEpCj4gKyNkZWZpbmXCoCBQ
Q0lFX0xJTktfUkVRX1JTVF9OT1RfSU5UCUJJVCgyKQo+ICsKPiArLyogSW50ZXJydXB0IE1hc2sg
UmVnaXN0ZXIgUmVsYXRlZCB0byBMZWdhY3kgSW50ZXJydXB0ICovCj4gwqAjZGVmaW5lIFBDSUVf
Q0xJRU5UX0lOVFJfTUFTS19MRUdBQ1kJMHgxYwo+ICsKPiArLyogSW50ZXJydXB0IE1hc2sgUmVn
aXN0ZXIgUmVsYXRlZCB0byBNaXNjZWxsYW5lb3VzIE9wZXJhdGlvbiAqLwo+ICsjZGVmaW5lIFBD
SUVfQ0xJRU5UX0lOVFJfTUFTS19NSVNDCTB4MjQKPiArCj4gKy8qIEhvdCBSZXNldCBDb250cm9s
IFJlZ2lzdGVyICovCj4gwqAjZGVmaW5lIFBDSUVfQ0xJRU5UX0hPVF9SRVNFVF9DVFJMCTB4MTgw
Cj4gKyNkZWZpbmXCoCBQQ0lFX0xUU1NNX0VOQUJMRV9FTkhBTkNFCUJJVCg0KQo+ICsKPiArLyog
TFRTU00gU3RhdHVzIFJlZ2lzdGVyICovCj4gwqAjZGVmaW5lIFBDSUVfQ0xJRU5UX0xUU1NNX1NU
QVRVUwkweDMwMAo+IC0jZGVmaW5lIFBDSUVfTFRTU01fRU5BQkxFX0VOSEFOQ0UJQklUKDQpCj4g
LSNkZWZpbmUgUENJRV9MVFNTTV9TVEFUVVNfTUFTSwkJR0VOTUFTSyg1LCAwKQo+ICsjZGVmaW5l
wqAgUENJRV9TTUxIX0xJTktVUAkJQklUKDE2KQo+ICsjZGVmaW5lwqAgUENJRV9SRExIX0xJTktV
UAkJQklUKDE3KQo+ICsjZGVmaW5lwqAgUENJRV9MSU5LVVAJCQkoUENJRV9TTUxIX0xJTktVUCB8
Cj4gUENJRV9SRExIX0xJTktVUCkKPiArI2RlZmluZcKgIFBDSUVfTFRTU01fU1RBVFVTX01BU0sJ
CUdFTk1BU0soNSwgMCkKPiDCoAo+IMKgc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+IMKgCXN0cnVj
dCBkd19wY2llIHBjaTsKPiBAQCAtMTYxLDEzICsxNzQsMTMgQEAgc3RhdGljIHUzMiByb2NrY2hp
cF9wY2llX2dldF9sdHNzbShzdHJ1Y3QKPiByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiDCoHN0
YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZW5hYmxlX2x0c3NtKHN0cnVjdCByb2NrY2hpcF9wY2ll
Cj4gKnJvY2tjaGlwKQo+IMKgewo+IMKgCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hp
cCwgUENJRV9DTElFTlRfRU5BQkxFX0xUU1NNLAo+IC0JCQkJIFBDSUVfQ0xJRU5UX0dFTkVSQUxf
Q09OVFJPTCk7Cj4gKwkJCQkgUENJRV9DTElFTlRfR0VORVJBTF9DT04pOwo+IMKgfQo+IMKgCj4g
wqBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2Rpc2FibGVfbHRzc20oc3RydWN0IHJvY2tjaGlw
X3BjaWUKPiAqcm9ja2NoaXApCj4gwqB7Cj4gwqAJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJv
Y2tjaGlwLAo+IFBDSUVfQ0xJRU5UX0RJU0FCTEVfTFRTU00sCj4gLQkJCQkgUENJRV9DTElFTlRf
R0VORVJBTF9DT05UUk9MKTsKPiArCQkJCSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTik7Cj4gwqB9
Cj4gwqAKPiDCoHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9saW5rX3VwKHN0cnVjdCBkd19wY2ll
ICpwY2kpCj4gQEAgLTUxNiw3ICs1MjksNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY29u
ZmlndXJlX3JjKHN0cnVjdAo+IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiDCoAlyb2NrY2hpcF9w
Y2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIHZhbCwKPiBQQ0lFX0NMSUVOVF9IT1RfUkVTRVRfQ1RS
TCk7Cj4gwqAKPiDCoAlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJ
RU5UX1JDX01PREUsCj4gLQkJCQkgUENJRV9DTElFTlRfR0VORVJBTF9DT05UUk9MKTsKPiArCQkJ
CSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTik7Cj4gwqAKPiDCoAlwcCA9ICZyb2NrY2hpcC0+cGNp
LnBwOwo+IMKgCXBwLT5vcHMgPSAmcm9ja2NoaXBfcGNpZV9ob3N0X29wczsKPiBAQCAtNTYyLDcg
KzU3NSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfZXAoc3RydWN0Cj4g
cGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+IMKgCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2Nr
Y2hpcCwgdmFsLAo+IFBDSUVfQ0xJRU5UX0hPVF9SRVNFVF9DVFJMKTsKPiDCoAo+IMKgCXJvY2tj
aGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRfRVBfTU9ERSwKPiAtCQkJ
CSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTlRST0wpOwo+ICsJCQkJIFBDSUVfQ0xJRU5UX0dFTkVS
QUxfQ09OKTsKPiDCoAo+IMKgCXJvY2tjaGlwLT5wY2kuZXAub3BzID0gJnJvY2tjaGlwX3BjaWVf
ZXBfb3BzOwo+IMKgCXJvY2tjaGlwLT5wY2kuZXAucGFnZV9zaXplID0gU1pfNjRLOwpSZXZpZXdl
ZC1ieTogV2lsZnJlZCBNYWxsYXdhIDx3aWxmcmVkLm1hbGxhd2FAd2RjLmNvbT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
