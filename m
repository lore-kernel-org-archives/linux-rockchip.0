Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27271C369D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Apr 2025 03:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1OGCnZpmxqldpMscjFhEqpbT0A8j+0iI4gWEqfgtko=; b=S/QRXd04ctSgkL
	qFPj4t1xW0zl896uQjaWU4R4EUD6s1Z27odkn+1SUB0z5TqvL1mAcQce1in5VvP6KN7DD3u+SrPKT
	1XZfr9F9wqnUonzVCwbaM7+yKrm8m0aW867UNzkgNJ1dyjbvxB1fVfOoHYnOCpQjLz9s3p+wYUsJX
	XI6J+8iSfPYINM08Smkg5CufW/LwL29+WbHU44/upcbnaQJx3k+fRH/uup5erijpzB2B8mym/p+Hn
	Zbg857435R3gIVT3vzffyXzP+1QHptcBJztuFg74S8K7cM+UVjyJVQCCM50o65jZe0n820ZErFULQ
	8ChxcvBZip8fILFIjyPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9FB2-00000004QaC-3X82;
	Mon, 28 Apr 2025 03:29:04 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9F94-00000004QMo-2TEP;
	Mon, 28 Apr 2025 03:27:03 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-736c3e7b390so4334514b3a.2;
        Sun, 27 Apr 2025 20:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745810821; x=1746415621; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dJ6vyOIM9wkdrOEiU106peP/FFpNedc2E4v+uxxalSo=;
        b=anke6WbdmJ6ssNjv13veo17tpAsP3uWW/JJzZSFocBrBIjQhnBVg0+332z3zjBM55s
         ZxLh0YwsqNQdVxrRo3s4Q6H0gjcyBZkD7lzh0QpMAuP9NVpnfxiaJ3ypBoOy/bE3UV0Q
         /j9tgNiTlIz3n4lQUgmLgH6yXdzBQ1V27tbACdLzEkCNQU2GNBfu8vAwXw/knl6aYNT8
         NCwLn0f+4brulNpdL9K7eiyPWJW57QfE80K+b6acH7WBEUiTYtoqjiuYxmSDif+nLUZq
         T+X+fM8DDm8PUtOSbzoRko7PTavU3T4iEQo+2NhLNlUZ27nUpyJsqPfjpF2kdvph1egu
         8ZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745810821; x=1746415621;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dJ6vyOIM9wkdrOEiU106peP/FFpNedc2E4v+uxxalSo=;
        b=NXr3Z9At1tI4jkJgi7q6hX90igvc0MKy6Zh4thbPTYAvkah79NthzsTK+qQqp4P21P
         N31QpZoQYeycOaiuCPlctr4Ol+MtcMO3s0O9EPc5+v/6zYjAb+Yuf3oIYxTZacdpx2UJ
         xo3pfmsrQ6Fyvzq0R0Q89qgMk7hIIksuMaeoeVZVyaIl0qXBy9Mmf8qAjp4dvCDEcEv7
         XG2iBIX1Ch7+QgPa/rbFprCJQGGWpeuUeOiCPjHx+HTEGXNSEyytY0f99HX+1XUDgYKR
         TpfPO3sPyoHs8SMInVTPdpNopbkVNiuyCGoHbIxUk6TcqUF7QKEh1wrzNyX7Vw7fu2BP
         INig==
X-Forwarded-Encrypted: i=1; AJvYcCUlWTRnTQQbWk1OxmRJLSru/57U7MOm5dHV2kmKEbsL+24kkZrNAX5dvylvJJWalO8QmIt7URtPA1FtwTUufi2p@lists.infradead.org, AJvYcCXYK7uhtiVBHsT4QWMyujfaM+EFSbmN7QdYsqHMJ5vvPF70DLQVIjZSu7sd7iTvX9kkabQ9uNW+voGCSUlY1Bg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzHl9z7aYnM/LueMamYdLQHlbN7BQDTV54LHZ0DjS1O3JFiyg4
	fEPUWGGxmkxrk8wAD9LWKPHWzMEoo3wPXChfioE/C4atxGt1rSKX
X-Gm-Gg: ASbGncupQA1y3l/Kwyz2qNOo5nNVEy+8u/l7Fza+LVHtf0aCs68fXugHcETA29J5RhE
	VksB/JUlbJ3pzczs0/0LKa98ohehXTNlvmafJ8Hb7o6t6l7coz1siAQL5tSYB98nkrKJrpprfbr
	bgB0SZlT64LfZsigh3lMxicLPd3B/E3gFK4XwFYDfz0kjiHG8x1NKg+OmoG7dJlxxhVnKaBn29C
	oCa8wMx5C0jm9YHxDUfGVs0SivokHr7hkRCZ/TxoDrZj7jzJpsl1DcUdZ8lVzssXYEZrx1PEiSV
	fUZ1UF+CHJS2+CExqvOD26gYaM/atxswtntXhsoUrjdzk8ADMUhX42zyeGEXxDIGJg==
X-Google-Smtp-Source: AGHT+IGSn8lCAerx7DuOG1U5CfTH5vI5HpaLXLhOBS6XWfNOWxIMc0ZRLqV/T3WZk/YLDAM61fYHPg==
X-Received: by 2002:a05:6a00:2e83:b0:736:fff2:9ac with SMTP id d2e1a72fcca58-73fd8f4e0d2mr13242252b3a.23.1745810821519;
        Sun, 27 Apr 2025 20:27:01 -0700 (PDT)
Received: from [192.168.0.69] ([159.196.5.243])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25912ed6sm6961386b3a.31.2025.04.27.20.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 20:27:01 -0700 (PDT)
Message-ID: <40232d5ef59383dc44fd8b91dbc2b0ba71f1d84f.camel@gmail.com>
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Unify link status checks with
 FIELD_GET
From: Wilfred Mallawa <wilfred.opensource@gmail.com>
To: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com, 
	bhelgaas@google.com, heiko@sntech.de
Cc: manivannan.sadhasivam@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 	shawn.lin@rock-chips.com, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
Date: Mon, 28 Apr 2025 13:26:54 +1000
In-Reply-To: <20250427125316.99627-4-18255117159@163.com>
References: <20250427125316.99627-1-18255117159@163.com>
	 <20250427125316.99627-4-18255117159@163.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_202702_649011_9A7DADE8 
X-CRM114-Status: GOOD (  14.58  )
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

T24gU3VuLCAyMDI1LTA0LTI3IGF0IDIwOjUzICswODAwLCBIYW5zIFpoYW5nIHdyb3RlOgo+IExp
bmstdXAgZGV0ZWN0aW9uIG1hbnVhbGx5IGNoZWNrZWQgUENJRV9MSU5LVVAgYml0cyBhY3Jvc3Mg
UkMvRVAKPiBtb2RlcywKPiBsZWFkaW5nIHRvIGNvZGUgZHVwbGljYXRpb24uIENlbnRyYWxpemUg
dGhlIGxvZ2ljIHVzaW5nIEZJRUxEX0dFVC4KPiBUaGlzCj4gcmVtb3ZlcyByZWR1bmRhbmN5IGFu
ZCBhYnN0cmFjdHMgaGFyZHdhcmUtc3BlY2lmaWMgYml0IG1hc2tpbmcsCj4gZW5zdXJpbmcKPiBj
b25zaXN0ZW50IGxpbmsgc3RhdGUgaGFuZGxpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogSGFucyBa
aGFuZyA8MTgyNTUxMTcxNTlAMTYzLmNvbT4KPiBSZXZpZXdlZC1ieTogTmlrbGFzIENhc3NlbCA8
Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gLS0tCj4gwqBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAyMSArKysrKysrLS0tLS0tLS0tLQo+
IC0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2Nr
Y2hpcC5jCj4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMK
PiBpbmRleCBhNzc4ZjRmNjE1OTUuLmJmYzQ3ZGFiMzJlNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtOCw2ICs4LDcgQEAKPiDC
oCAqIEF1dGhvcjogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4gwqAgKi8KPiDCoAo+
ICsjaW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4KPiDCoCNpbmNsdWRlIDxsaW51eC9jbGsuaD4K
PiDCoCNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4gwqAjaW5jbHVkZSA8bGludXgv
aXJxY2hpcC9jaGFpbmVkX2lycS5oPgo+IEBAIC02MCw5ICs2MSw4IEBACj4gwqAKPiDCoC8qIExU
U1NNIFN0YXR1cyBSZWdpc3RlciAqLwo+IMKgI2RlZmluZSBQQ0lFX0NMSUVOVF9MVFNTTV9TVEFU
VVMJMHgzMDAKPiAtI2RlZmluZcKgIFBDSUVfU01MSF9MSU5LVVAJCUJJVCgxNikKPiAtI2RlZmlu
ZcKgIFBDSUVfUkRMSF9MSU5LVVAJCUJJVCgxNykKPiAtI2RlZmluZcKgIFBDSUVfTElOS1VQCQkJ
KFBDSUVfU01MSF9MSU5LVVAgfAo+IFBDSUVfUkRMSF9MSU5LVVApCj4gKyNkZWZpbmXCoCBQQ0lF
X0xJTktVUAkJCTB4Mwo+ICsjZGVmaW5lwqAgUENJRV9MSU5LVVBfTUFTSwkJR0VOTUFTSygxNywg
MTYpCj4gwqAjZGVmaW5lwqAgUENJRV9MVFNTTV9TVEFUVVNfTUFTSwkJR0VOTUFTSyg1LCAwKQo+
IMKgCj4gwqBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSB7Cj4gQEAgLTE4OCwxMCArMTg4LDcgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wY2llX2xpbmtfdXAoc3RydWN0IGR3X3BjaWUKPiAqcGNpKQo+IMKg
CXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3JvY2tjaGlwX3BjaWUocGNpKTsK
PiDCoAl1MzIgdmFsID0gcm9ja2NoaXBfcGNpZV9nZXRfbHRzc20ocm9ja2NoaXApOwo+IMKgCj4g
LQlpZiAoKHZhbCAmIFBDSUVfTElOS1VQKSA9PSBQQ0lFX0xJTktVUCkKPiAtCQlyZXR1cm4gMTsK
PiAtCj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiBGSUVMRF9HRVQoUENJRV9MSU5LVVBfTUFTSywg
dmFsKSA9PSBQQ0lFX0xJTktVUDsKPiDCoH0KPiDCoAo+IMKgc3RhdGljIHZvaWQgcm9ja2NoaXBf
cGNpZV9lbmFibGVfbDBzKHN0cnVjdCBkd19wY2llICpwY2kpCj4gQEAgLTQ1MCw3ICs0NDcsNyBA
QCBzdGF0aWMgaXJxcmV0dXJuX3QKPiByb2NrY2hpcF9wY2llX3JjX3N5c19pcnFfdGhyZWFkKGlu
dCBpcnEsIHZvaWQgKmFyZykKPiDCoAlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gJnJvY2tjaGlwLT5w
Y2k7Cj4gwqAJc3RydWN0IGR3X3BjaWVfcnAgKnBwID0gJnBjaS0+cHA7Cj4gwqAJc3RydWN0IGRl
dmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4gLQl1MzIgcmVnLCB2YWw7Cj4gKwl1MzIgcmVnOwo+IMKg
Cj4gwqAJcmVnID0gcm9ja2NoaXBfcGNpZV9yZWFkbF9hcGIocm9ja2NoaXAsCj4gUENJRV9DTElF
TlRfSU5UUl9TVEFUVVNfTUlTQyk7Cj4gwqAJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tj
aGlwLCByZWcsCj4gUENJRV9DTElFTlRfSU5UUl9TVEFUVVNfTUlTQyk7Cj4gQEAgLTQ1OSw4ICs0
NTYsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QKPiByb2NrY2hpcF9wY2llX3JjX3N5c19pcnFfdGhy
ZWFkKGludCBpcnEsIHZvaWQgKmFyZykKPiDCoAlkZXZfZGJnKGRldiwgIkxUU1NNX1NUQVRVUzog
JSN4XG4iLAo+IHJvY2tjaGlwX3BjaWVfZ2V0X2x0c3NtKHJvY2tjaGlwKSk7Cj4gwqAKPiDCoAlp
ZiAocmVnICYgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQpIHsKPiAtCQl2YWwgPSByb2NrY2hpcF9w
Y2llX2dldF9sdHNzbShyb2NrY2hpcCk7Cj4gLQkJaWYgKCh2YWwgJiBQQ0lFX0xJTktVUCkgPT0g
UENJRV9MSU5LVVApIHsKPiArCQlpZiAocm9ja2NoaXBfcGNpZV9saW5rX3VwKHBjaSkpIHsKPiDC
oAkJCWRldl9kYmcoZGV2LCAiUmVjZWl2ZWQgTGluayB1cCBldmVudC4KPiBTdGFydGluZyBlbnVt
ZXJhdGlvbiFcbiIpOwo+IMKgCQkJLyogUmVzY2FuIHRoZSBidXMgdG8gZW51bWVyYXRlIGVuZHBv
aW50Cj4gZGV2aWNlcyAqLwo+IMKgCQkJcGNpX2xvY2tfcmVzY2FuX3JlbW92ZSgpOwo+IEBAIC00
NzcsNyArNDczLDcgQEAgc3RhdGljIGlycXJldHVybl90Cj4gcm9ja2NoaXBfcGNpZV9lcF9zeXNf
aXJxX3RocmVhZChpbnQgaXJxLCB2b2lkICphcmcpCj4gwqAJc3RydWN0IHJvY2tjaGlwX3BjaWUg
KnJvY2tjaGlwID0gYXJnOwo+IMKgCXN0cnVjdCBkd19wY2llICpwY2kgPSAmcm9ja2NoaXAtPnBj
aTsKPiDCoAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2ktPmRldjsKPiAtCXUzMiByZWcsIHZhbDsK
PiArCXUzMiByZWc7Cj4gwqAKPiDCoAlyZWcgPSByb2NrY2hpcF9wY2llX3JlYWRsX2FwYihyb2Nr
Y2hpcCwKPiBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVNDKTsKPiDCoAlyb2NrY2hpcF9wY2ll
X3dyaXRlbF9hcGIocm9ja2NoaXAsIHJlZywKPiBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVND
KTsKPiBAQCAtNDkxLDggKzQ4Nyw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdAo+IHJvY2tjaGlwX3Bj
aWVfZXBfc3lzX2lycV90aHJlYWQoaW50IGlycSwgdm9pZCAqYXJnKQo+IMKgCX0KPiDCoAo+IMKg
CWlmIChyZWcgJiBQQ0lFX1JETEhfTElOS19VUF9DSEdFRCkgewo+IC0JCXZhbCA9IHJvY2tjaGlw
X3BjaWVfZ2V0X2x0c3NtKHJvY2tjaGlwKTsKPiAtCQlpZiAoKHZhbCAmIFBDSUVfTElOS1VQKSA9
PSBQQ0lFX0xJTktVUCkgewo+ICsJCWlmIChyb2NrY2hpcF9wY2llX2xpbmtfdXAocGNpKSkgewo+
IMKgCQkJZGV2X2RiZyhkZXYsICJsaW5rIHVwXG4iKTsKPiDCoAkJCWR3X3BjaWVfZXBfbGlua3Vw
KCZwY2ktPmVwKTsKPiDCoAkJfQoKUmV2aWV3ZWQtYnk6IFdpbGZyZWQgTWFsbGF3YSA8d2lsZnJl
ZC5tYWxsYXdhQHdkYy5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
