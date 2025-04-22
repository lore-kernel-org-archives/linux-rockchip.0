Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CD2C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 20:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9I/zDWwt9vLExcMCk3vH2uoCI7tYxvJs6KJBXdRzE0=; b=exP/QEBjR2Z31C
	1rS0JEhux8+nx/9ZLnK1Odpq5rUO1pSjJVPQM7Pf2xjJ8yD8RL3X7ZW2NCgCckTgUlz4jJCMoPs6/
	Jua/LajkDOwBUyN+D8992KKCLWIPqQ9Jm6Av0GB5C044mmpqSi5sCDxtEdnxD8W1hrng3fLgRrdFJ
	o4/UmAwsLFFwDP9XIQ0UdSsG4IGONqd9qz63uMHyi1cYIV/nkZAfEWOAdB+P/f3zCmZgzclUFmLy5
	vPeFtWAhnYP5dnXp7OH4zB62+BL+OAZTPYhPlgxpYwPOaB1w3T8KjyaYaAYKyyUB2uBCVSNr2yCKk
	Fvpt0kB/haANblsAeNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Jr6-00000008Pqu-0osM;
	Tue, 22 Apr 2025 20:04:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7JpI-00000008Pdq-3oYE
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Apr 2025 20:02:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=s9u1inJLOLfQh6u+GzwXvGD1x0ZTwyyXPt4wVXYzgNE=; b=YE6YHOGt1iZL98Jt9XnIPxFUhZ
	qhbzFxEwP9Y6qCZfUJUnqalNl015Ysi5BEOD70aURIWJPhTc8Pv9OHRTmIEpi38+yS0xdPLWrbiUT
	9AZcIwpRQkkI40yycwViju/gYegSqtp5djOMzwtz8RmlWe7ms3e7OROcfd6SjFJgZwNqfCz2L3FIH
	L+T3q88AZhYpjp/rlikM02LXTwgR/JHq79AMm5Nk2gGMyzCTRZYUbeAC1KNeA9umgh8s4G+/ryttI
	JikhdoHvDh5ej0gRABAOFtdKnU90FzJrQJZ1eFUAKf6D5wppq6zVtfdHBPGWIHax4hMD1VSXPk6jy
	KZMwlR7w==;
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7JpF-0000000BJIV-0TQ6
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Apr 2025 20:02:39 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7c07cd527e4so547396685a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Apr 2025 13:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1745352153; x=1745956953; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9u1inJLOLfQh6u+GzwXvGD1x0ZTwyyXPt4wVXYzgNE=;
        b=OzPtQj2dQXS/He1jSdstCKrNGAYz1ooG5EJRB0RNnDkPlRoQ/zBn0HRw3rqqvBWyvN
         xFY41wwVpeZUA/rfb4LLVySxijc6yl8D2OR7wjyvzSXKJH/olTyAeA8xdrCpOtnp4gA8
         YxJXGu9ANUoO2WMF39CUPGUiFiwQVa6xhTa+hcSeaxJ7l6vJCLr+XU1G+UYmNutDN2Ex
         L9NYqQuvNB2ls31QWZ1r+p0rzzQ4g8ctxsX9BZ4aj7CMqPtZZt2G6QbmD4ecRYmrYu4n
         IWI7q1ed7Ky85fQu5DgjQ8MOUhduRU5p/G9vBL3SwaQHM4DXffHrC6altDn+9hwpH3rg
         XHCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745352153; x=1745956953;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s9u1inJLOLfQh6u+GzwXvGD1x0ZTwyyXPt4wVXYzgNE=;
        b=MDL1tN0XE97r5x531oBNpEUaJ0EYke0HkSFiYPMQfYzC6/SqdA/9bbwMYmQnLbUYxn
         SBKu5tBCo15n7uX2ja9wini3cNZc4Fiyj+yBqUH04fW5L0iNAaeXtxFwJGQz5eSXMqEI
         WNvzrgve5yvxy0JdZwNYeJIiWI687HmY0bw20pKWn8RMAl8vllDaRlmOTScKG9Sf8jLG
         CdswkNOtGycJLe1roXbw5al7V83rBnhmHOyeVLHmV0ex8dvQkJ0q/Jrn51xG6Bn6ZPil
         K0kSVi/1JI43iOVd6rSZqsxQ4vk/sdNW81htPknJLQqSn4WBNxCxunmVw4JKCSKfGTOv
         Nbow==
X-Forwarded-Encrypted: i=1; AJvYcCXA5n2hYdmV7hdkyykBPKPtNhuWM53K14qBh+H7gFUmB7KrbDVUEdqyTwaPdKdbVkYQXCnTsoeyy4jsiq2dYA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxWXshc1U0XhKc8dhmdD37WskqbhSoCkiwmLh+LpwXbQ++Eyfzz
	Ljt9VhyCY2Sb/RIx/NALUms/o2dE6UOr+bi22JbT6uQxw0YAJnTIsv+5Xx9oovA=
X-Gm-Gg: ASbGnctK9q74VNcV/Se6rUZW4HCo3+/lYgGmpl647rsvJabF6ztjYlCb3ZOYv73nhn6
	9NrDK3OlZ0Spb/ORoZaLhNDQ6kzps+LRQQcGaJeqc+gF2bbpGzZjwRUltDY0cl1EzRWf9YsZzhu
	pMo9yrhY1C6Gdx9mp/M8SCVfQ85qEUHLhNWA/hdLGSEi0Lv4YkkcdOchT/EDEw4ZP07h9oTxd9N
	kujTjznEEnJ0x2YhszWDLAkKyBWRtREPhM6qLRY4PeV2WtBut76e05/Eyrwumgvw6FmYY9FjCog
	f/PK6tCyqk4EpTN8ENdlo+N9UECfF+1iiEWTDqoVSWaSJQ==
X-Google-Smtp-Source: AGHT+IEyfUity8IZHL89fVip+YlKPkQeYXQ/cc/i4hOtn80oieQH71fbgk3bqPItSdc1oVh2sxqqRw==
X-Received: by 2002:a05:620a:45a6:b0:7c5:5d4b:e62a with SMTP id af79cd13be357-7c92805f2f4mr3022695985a.54.1745352153635;
        Tue, 22 Apr 2025 13:02:33 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:9913::5ac? ([2606:6d00:15:9913::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c925a8f3c5sm593665885a.37.2025.04.22.13.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 13:02:32 -0700 (PDT)
Message-ID: <5f215b62927438061eb004694847705406a6814c.camel@ndufresne.ca>
Subject: Re: [PATCH v3 2/3] media: verisilicon: add WebP decoding support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Sebastian Fricke	
 <sebastian.fricke@collabora.com>, Ricardo Ribalda <ribalda@chromium.org>, 
 Erling Ljunggren <hljunggr@cisco.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart	 <laurent.pinchart@ideasonboard.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>, Jean-Michel Hautbois
 <jeanmichel.hautbois@ideasonboard.com>,  Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Date: Tue, 22 Apr 2025 16:02:31 -0400
In-Reply-To: <20241121131904.261230-3-hugues.fruchet@foss.st.com>
References: <20241121131904.261230-1-hugues.fruchet@foss.st.com>
	 <20241121131904.261230-3-hugues.fruchet@foss.st.com>
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_210237_765356_A9E00298 
X-CRM114-Status: GOOD (  15.49  )
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

SGksCgpMZSBqZXVkaSAyMSBub3ZlbWJyZSAyMDI0IMOgIDE0OjE5ICswMTAwLCBIdWd1ZXMgRnJ1
Y2hldCBhIMOpY3JpdMKgOgo+IEFkZCBXZWJQIHBpY3R1cmUgZGVjb2Rpbmcgc3VwcG9ydCB0byBW
UDggc3RhdGVsZXNzIGRlY29kZXIuCgpUaGlzIGlzIGEgYml0IHNob3J0LiBJIGJlbGlldmUgSSd2
ZSBhc2tlZCB0byBleHBsYWluIHdoeSBpdHMgZmluZSB0bwpidW1wIHRoZSBOVjEyIG1heCB3aWR0
aC9oZWlnaHQgdG8gNEsgaGVyZSBvciBpbiB0aGUgY29kZS4gQWxzbywgd2lsbApuZWVkIGEgc2lt
cGxlIHBvcnQgb25jZSB0aGUgUElYX0ZNVCBpcyBjaGFuZ2VkLgoKTmljb2xhcwoKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBIdWd1ZXMgRnJ1Y2hldCA8aHVndWVzLmZydWNoZXRAZm9zcy5zdC5jb20+Cj4g
LS0tCj4gwqAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3JlZ3MuaCB8
wqAgMSArCj4gwqAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMuY8Kg
wqDCoCB8IDE0ICsrKysrKysrKysrKysrCj4gwqAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX3Y0bDIuY8KgwqDCoCB8wqAgMiArKwo+IMKgLi4uL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL3N0bTMybXAyNV92cHVfaHcuY8KgwqDCoMKgIHwgMTcKPiArKysrKysrKysrKysrKystLQo+
IMKgNCBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19n
MV9yZWdzLmgKPiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cx
X3JlZ3MuaAo+IGluZGV4IGM2MjNiM2IwYmUxOC4uZTdkNGRiNzg4ZTU3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3JlZ3MuaAo+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3JlZ3MuaAo+
IEBAIC0yMzIsNiArMjMyLDcgQEAKPiDCoCNkZWZpbmXCoMKgwqDCoCBHMV9SRUdfREVDX0NUUkw3
X0RDVDdfU1RBUlRfQklUKHgpCQkoKCh4KSAmCj4gMHgzZikgPDwgMCkKPiDCoCNkZWZpbmUKPiBH
MV9SRUdfQUREUl9TVFIJCQkJCTB4MDMwCj4gwqAjZGVmaW5lCj4gRzFfUkVHX0FERFJfRFNUCQkJ
CQkweDAzNAo+ICsjZGVmaW5lIEcxX1JFR19BRERSX0RTVF9DSFJPTUEJCQkJMHgwMzgKPiDCoCNk
ZWZpbmUgRzFfUkVHX0FERFJfUkVGKGkpCQkJCSgweDAzOCArCj4gKChpKSAqIDB4NCkpCj4gwqAj
ZGVmaW5lwqDCoMKgwqAgRzFfUkVHX0FERFJfUkVGX0ZJRUxEX0UJCQlCSVQoMSkKPiDCoCNkZWZp
bmXCoMKgwqDCoCBHMV9SRUdfQUREUl9SRUZfVE9QQ19FCQkJQklUKDApCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX3ZwOF9kZWMuYwo+
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfdnA4X2RlYy5j
Cj4gaW5kZXggODUxZWI2N2YxOWY1Li5jODNlZTZmNWVkYzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfdnA4X2RlYy5jCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfdnA4X2RlYy5jCj4g
QEAgLTMwNyw2ICszMDcsMTIgQEAgc3RhdGljIHZvaWQgY2ZnX3BhcnRzKHN0cnVjdCBoYW50cm9f
Y3R4ICpjdHgsCj4gwqAJCQnCoMKgCj4gRzFfUkVHX0RFQ19DVFJMM19TVFJFQU1fTEVOKGRjdF9w
YXJ0X3RvdGFsX2xlbiksCj4gwqAJCQnCoMKgIEcxX1JFR19ERUNfQ1RSTDMpOwo+IMKgCj4gKwlp
ZiAoY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9XRUJQX0ZSQU1FKQo+
ICsJCXZkcHVfd3JpdGVfcmVsYXhlZCh2cHUsCj4gKwkJCQnCoMKgIEcxX1JFR19ERUNfQ1RSTDNf
U1RSRUFNX0xFTl9FWFQKPiArCQkJCQkoZGN0X3BhcnRfdG90YWxfbGVuID4+IDI0KSwKPiArCQkJ
CcKgwqAgRzFfUkVHX0RFQ19DVFJMMyk7Cj4gKwo+IMKgCS8qIERDVCBwYXJ0aXRpb25zIGJhc2Ug
YWRkcmVzcyAqLwo+IMKgCWZvciAoaSA9IDA7IGkgPCBoZHItPm51bV9kY3RfcGFydHM7IGkrKykg
ewo+IMKgCQl1MzIgYnl0ZV9vZmZzZXQgPSBkY3RfcGFydF9vZmZzZXQgKwo+IGRjdF9zaXplX3Bh
cnRfc2l6ZSArIGNvdW50Owo+IEBAIC00MjcsNiArNDMzLDEyIEBAIHN0YXRpYyB2b2lkIGNmZ19i
dWZmZXJzKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gwqAKPiDCoAlkc3RfZG1hID0gaGFudHJv
X2dldF9kZWNfYnVmX2FkZHIoY3R4LCAmdmIyX2RzdC0+dmIyX2J1Zik7Cj4gwqAJdmRwdV93cml0
ZV9yZWxheGVkKHZwdSwgZHN0X2RtYSwgRzFfUkVHX0FERFJfRFNUKTsKPiArCj4gKwlpZiAoY3R4
LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9XRUJQX0ZSQU1FKQo+ICsJCXZk
cHVfd3JpdGVfcmVsYXhlZCh2cHUsIGRzdF9kbWEgKwo+ICsJCQkJwqDCoCBjdHgtCj4gPmRzdF9m
bXQucGxhbmVfZm10WzBdLmJ5dGVzcGVybGluZSAqCj4gKwkJCQnCoMKgIGN0eC0+ZHN0X2ZtdC5o
ZWlnaHQsCj4gKwkJCQnCoMKgIEcxX1JFR19BRERSX0RTVF9DSFJPTUEpOwo+IMKgfQo+IMKgCj4g
wqBpbnQgaGFudHJvX2cxX3ZwOF9kZWNfcnVuKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gQEAg
LTQ3MSw2ICs0ODMsOCBAQCBpbnQgaGFudHJvX2cxX3ZwOF9kZWNfcnVuKHN0cnVjdCBoYW50cm9f
Y3R4ICpjdHgpCj4gwqAJCXJlZyB8PSBHMV9SRUdfREVDX0NUUkwwX1NLSVBfTU9ERTsKPiDCoAlp
ZiAoaGRyLT5sZi5sZXZlbCA9PSAwKQo+IMKgCQlyZWcgfD0gRzFfUkVHX0RFQ19DVFJMMF9GSUxU
RVJJTkdfRElTOwo+ICsJaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9G
TVRfV0VCUF9GUkFNRSkKPiArCQlyZWcgfD0gRzFfUkVHX0RFQ19DVFJMMF9XRUJQX0U7Cj4gwqAJ
dmRwdV93cml0ZV9yZWxheGVkKHZwdSwgcmVnLCBHMV9SRUdfREVDX0NUUkwwKTsKPiDCoAo+IMKg
CS8qIEZyYW1lIGRpbWVuc2lvbnMgKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBpbmRleCAyNTEzYWRmYmQ4MjUuLjcwNzViMmJh
MWVjMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb192NGwyLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb192NGwyLmMKPiBAQCAtNDcwLDYgKzQ3MCw3IEBAIGhhbnRyb191cGRhdGVfcmVxdWlyZXNf
cmVxdWVzdChzdHJ1Y3QgaGFudHJvX2N0eAo+ICpjdHgsIHUzMiBmb3VyY2MpCj4gwqAJCWJyZWFr
Owo+IMKgCWNhc2UgVjRMMl9QSVhfRk1UX01QRUcyX1NMSUNFOgo+IMKgCWNhc2UgVjRMMl9QSVhf
Rk1UX1ZQOF9GUkFNRToKPiArCWNhc2UgVjRMMl9QSVhfRk1UX1dFQlBfRlJBTUU6Cj4gwqAJY2Fz
ZSBWNEwyX1BJWF9GTVRfSDI2NF9TTElDRToKPiDCoAljYXNlIFY0TDJfUElYX0ZNVF9IRVZDX1NM
SUNFOgo+IMKgCWNhc2UgVjRMMl9QSVhfRk1UX1ZQOV9GUkFNRToKPiBAQCAtNDkyLDYgKzQ5Myw3
IEBAIGhhbnRyb191cGRhdGVfcmVxdWlyZXNfaG9sZF9jYXB0dXJlX2J1ZihzdHJ1Y3QKPiBoYW50
cm9fY3R4ICpjdHgsIHUzMiBmb3VyY2MpCj4gwqAJY2FzZSBWNEwyX1BJWF9GTVRfSlBFRzoKPiDC
oAljYXNlIFY0TDJfUElYX0ZNVF9NUEVHMl9TTElDRToKPiDCoAljYXNlIFY0TDJfUElYX0ZNVF9W
UDhfRlJBTUU6Cj4gKwljYXNlIFY0TDJfUElYX0ZNVF9XRUJQX0ZSQU1FOgo+IMKgCWNhc2UgVjRM
Ml9QSVhfRk1UX0hFVkNfU0xJQ0U6Cj4gwqAJY2FzZSBWNEwyX1BJWF9GTVRfVlA5X0ZSQU1FOgo+
IMKgCQl2cS0+c3Vic3lzdGVtX2ZsYWdzICY9Cj4gfihWQjJfVjRMMl9GTF9TVVBQT1JUU19NMk1f
SE9MRF9DQVBUVVJFX0JVRik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vc3RtMzJtcDI1X3ZwdV9ody5jCj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL3N0bTMybXAyNV92cHVfaHcuYwo+IGluZGV4IDgzMzgyMTEyMGIyMC4uYzI5
MWIxNTYwZTIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vc3RtMzJtcDI1X3ZwdV9ody5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9zdG0zMm1wMjVfdnB1X2h3LmMKPiBAQCAtMjIsMTAgKzIyLDEwIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaGFudHJvX2ZtdAo+IHN0bTMybXAyNV92ZGVjX2ZtdHNbXSA9IHsKPiDCoAkJ
LmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+IMKgCQkuZnJtc2l6ZSA9IHsKPiDCoAkJ
CS5taW5fd2lkdGggPSBGTVRfTUlOX1dJRFRILAo+IC0JCQkubWF4X3dpZHRoID0gRk1UX0ZIRF9X
SURUSCwKPiArCQkJLm1heF93aWR0aCA9IEZNVF80S19XSURUSCwKPiDCoAkJCS5zdGVwX3dpZHRo
ID0gTUJfRElNLAo+IMKgCQkJLm1pbl9oZWlnaHQgPSBGTVRfTUlOX0hFSUdIVCwKPiAtCQkJLm1h
eF9oZWlnaHQgPSBGTVRfRkhEX0hFSUdIVCwKPiArCQkJLm1heF9oZWlnaHQgPSBGTVRfNEtfSEVJ
R0hULAo+IMKgCQkJLnN0ZXBfaGVpZ2h0ID0gTUJfRElNLAo+IMKgCQl9LAo+IMKgCX0sCj4gQEAg
LTQyLDYgKzQyLDE5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdAo+IHN0bTMybXAy
NV92ZGVjX2ZtdHNbXSA9IHsKPiDCoAkJCS5zdGVwX2hlaWdodCA9IE1CX0RJTSwKPiDCoAkJfSwK
PiDCoAl9LAo+ICsJewo+ICsJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfV0VCUF9GUkFNRSwKPiAr
CQkuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX1ZQOF9ERUMsCj4gKwkJLm1heF9kZXB0aCA9IDIs
Cj4gKwkJLmZybXNpemUgPSB7Cj4gKwkJCS5taW5fd2lkdGggPSBGTVRfTUlOX1dJRFRILAo+ICsJ
CQkubWF4X3dpZHRoID0gRk1UXzRLX1dJRFRILAo+ICsJCQkuc3RlcF93aWR0aCA9IE1CX0RJTSwK
PiArCQkJLm1pbl9oZWlnaHQgPSBGTVRfTUlOX0hFSUdIVCwKPiArCQkJLm1heF9oZWlnaHQgPSBG
TVRfNEtfSEVJR0hULAo+ICsJCQkuc3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4gKwkJfSwKPiArCX0s
Cj4gwqAJewo+IMKgCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX0gyNjRfU0xJQ0UsCj4gwqAJCS5j
b2RlY19tb2RlID0gSEFOVFJPX01PREVfSDI2NF9ERUMsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
