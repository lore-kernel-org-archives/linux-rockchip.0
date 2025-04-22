Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52440C369D1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 19:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwejHqrJf/j01WOBj5/6heyNJaJl40B4LfOAENFbtD0=; b=dv5rUNKfC9aUYC
	Zq3ILbJKlhbYdlk0cI9hkcxn3alP40KkDNGKlh9pMXDOoD67WoOaXSmXL/JV5mIlApjPlrKrCpD3z
	sRGxaN4fVprA4JrNBGTaxCQ3pmvNoVWedW4n1NC3Xzghmlt9tWG7bgBnaWp8MTFQW0VfPBnDPFDJL
	fA8/O0ZBnQ1ox41I/k0yPcrS5MXVAHH6t78p5igLoFQCAbyd54wmkfIZqq8oBFBBrjmgDUfZuKgYD
	nbuGWkBDq3lkffzi+N7R84hzYTjyqHcEb27VGfJkNpMF8pbUhg0d3BmAq17XGMvZ7Osw5tYvB2oc0
	lDqZ31IX9adoPPaWM2qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Ji8-00000008P1v-1sZs;
	Tue, 22 Apr 2025 19:55:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7JgH-00000008OtU-2uL1
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Apr 2025 19:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=rYsIXJ0VH1fBZwKk67xkFa5qHHB2W1M/DHJM5j7x72w=; b=p9Dd8Mdv7/dzIWJ46RBq1pMLeN
	a9Bw11lgTD2pgQDnoEVjkhm7CN3TP/AgoGzCB3oxxv8Hkap1uAHK33cfs6mniq3Uwe4pw3TkwG4K6
	JhlLH817A44CqS06IPrAPkkPNeHyy4ExnjUAPX1q/JA/40stM3YchmzKxjZyMBd5psXu7dJA1DJJN
	yWXb4jgx4SPngYGvPYf7yHCF7CsVEV7qNrG1X1I33UdnWpaDj1GTBjzk2PwuZR8ZhVej5Wg+uZNe5
	I1+3UIc7UHlZb4yyOyoqqK3eb0eJMNemg71gmR9o1bVCWIJbV5AV5SkSS8c7Ev/yORexFR2Sd3mEg
	W2MGdN6A==;
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7JgC-0000000BItx-2sRW
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Apr 2025 19:53:20 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-6ecfa716ec1so54025256d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Apr 2025 12:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1745351594; x=1745956394; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rYsIXJ0VH1fBZwKk67xkFa5qHHB2W1M/DHJM5j7x72w=;
        b=tzq+mRS8JSCQ093ZRDHmaaUSYT8iH28skb9U4P0UteRDGRLT27MYDWA+00mOZjenyo
         NfRYEQqGQ2YNHr1gyiwBg6UsfttCB8UBNdFEa2l+SxvA2m+OJUTJDKB4dXuufuPlUbYP
         BgwqaiUTP+3iBIqBnvCxDFDFIDxMualLh9KHybK+tolAmNEBS6oVNatjlUzYlA+Qbp0b
         b601U4vQPchRtbVvfENtR4iRdUPLwXETq6L1mBTq9zQrgdcFsLKtnvtULanNMkJ1/euO
         wOzRddUr92z3YMyVlqSiy8JkTn5t08kxcAKGTFF3UekirHCXxMlMOeuigCYhrU3MgyC9
         G9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745351594; x=1745956394;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rYsIXJ0VH1fBZwKk67xkFa5qHHB2W1M/DHJM5j7x72w=;
        b=OcCnokFEveUtTQYC5QSF7y6wg9JURzPSYLHH1ErzVKzGw9dvLc7AXcbC1tWaAEqHzL
         RwNgp9szDyldMR0hy5DIUooenkY/53amwgAi/eUOsWXHSykG4OxfE6btPUnjelpDrkDg
         v8uLN/d+LZ2SG1YpB5F9wsGmUnZHHo7ZK/99LGZ8pgI7/fJ8OlQHB6fzDK/a1eraIPRn
         21dKieBlJSty1a1T/bqEcd1oounJS47dQwC6INTimOBEDXis4ykxCHEBoUwJUQAkv0AM
         9gdAvdfzJkI8aJnwxXTO2hhdsIyvbWoueChlm2DUQBjaliv/1OcKwHIesnxaOyxiYZGB
         XFaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDvVuSc1gmJ5673Z0kdm3GU9KNW4lbdsC87vI5KAYQuAuLA65R/4w49F8yv4Oh8VaYOAPKvRrPPx48RvTPxg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyz6x1nqEbOey8rfAg6V1wfc8/nOjSG4J9Imq9e6WSavBxl1oEU
	hvn7vDB9/+8NzIIus4ZD+BwxpXzvZON/hWxceBpOy0ZWlHi1nCdBpeLqpAlafOE=
X-Gm-Gg: ASbGncsqHMl9cjY0EKAdApqHAIceAUIcv7yrS1oXjno4YGw/QYc3D40XRa5Qsx0U2/p
	NalIaNwzP2StUsrW4MIVF3E9wxqPmslPLje5hFiZvtvHMu7aneuTgfiZzWBsvGkGFa77teSGX0t
	wf1/LSUsu9XRtF77NWyNBUIjxAs5fIVHkB1oMAoO//wFsk1PyY6+qlIEC2sk8rx3o99VgLHlOq9
	rOTKpehEqFTmBBa3lKZXKdHaKU02ekeYOj/dSqQPjQEa57xuE9sS0W7czZ26WIeJbYAlz2h8JWQ
	jytZxzxcMCMVVrnJAoo12Bj13pHYXS6C6QmNAzpmgfp+Tw==
X-Google-Smtp-Source: AGHT+IFx37IZxz2XZRa4HUxytJgkJVsEXuyDvydowgtq1jU/C5yFgExdGRxaZiK2dG6HIZZz2N702A==
X-Received: by 2002:a05:6214:21e7:b0:6e8:f4e2:26ef with SMTP id 6a1803df08f44-6f2c4656c2cmr318324046d6.31.1745351593565;
        Tue, 22 Apr 2025 12:53:13 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:9913::5ac? ([2606:6d00:15:9913::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f2c2bfcfd0sm61261036d6.82.2025.04.22.12.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 12:53:12 -0700 (PDT)
Message-ID: <419ba5e518be4a35ed0277f749ca9a317f6bff5c.camel@ndufresne.ca>
Subject: Re: [PATCH v3 1/3] media: uapi: add WebP uAPI
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
Date: Tue, 22 Apr 2025 15:53:11 -0400
In-Reply-To: <20241121131904.261230-2-hugues.fruchet@foss.st.com>
References: <20241121131904.261230-1-hugues.fruchet@foss.st.com>
	 <20241121131904.261230-2-hugues.fruchet@foss.st.com>
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_205317_142624_1F7CC5EB 
X-CRM114-Status: GOOD (  19.66  )
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

SGksCgpzb3JyeSBmb3IgdGhlIGxhdGUgY29tZSBiYWNrLgoKTGUgamV1ZGkgMjEgbm92ZW1icmUg
MjAyNCDDoCAxNDoxOSArMDEwMCwgSHVndWVzIEZydWNoZXQgYSDDqWNyaXTCoDoKPiBUaGlzIHBh
dGNoIGFkZHMgdGhlIFdlYlAgcGljdHVyZSBkZWNvZGluZyBrZXJuZWwgdUFQSS4KPiAKPiBUaGlz
IGRlc2lnbiBpcyBiYXNlZCBvbiBjdXJyZW50bHkgYXZhaWxhYmxlIFZQOCBBUEkgaW1wbGVtZW50
YXRpb24gYW5kCj4gYWltcyB0byBzdXBwb3J0IHRoZSBkZXZlbG9wbWVudCBvZiBXZWJQIHN0YXRl
bGVzcyB2aWRlbyBjb2RlY3MKPiBvbiBMaW51eC4KClNob3VsZCBtZW50aW9uIHRoYXQgdGhpcyBu
ZXcgcGl4IGZtdCBpcyBhZGRlZCB0byBtYWtlIGl0IHBvc3NpYmxlIHRvCnN1cHBvcnQgYm90aCBp
bnRyYS1vbmx5IGFuZCBWUDggd2l0aCByZWZlcmVuY2UsIHdoaWxlIGFkdmVydGlzaW5nCmRpZmZl
cmVudCBmcmFtZSBzaXplcy4KCj4gCj4gU2lnbmVkLW9mZi1ieTogSHVndWVzIEZydWNoZXQgPGh1
Z3Vlcy5mcnVjaGV0QGZvc3Muc3QuY29tPgo+IC0tLQo+IMKgLi4uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvdjRsL2JpYmxpby5yc3TCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDkgKysrKysrKysrCj4gwqAu
Li4vbWVkaWEvdjRsL3BpeGZtdC1jb21wcmVzc2VkLnJzdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDE3ICsrKysrKysrKysrKysrKysrCj4gwqBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwy
LWlvY3RsLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoGluY2x1ZGUvdWFwaS9s
aW51eC92aWRlb2RldjIuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEg
Kwo+IMKgNCBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvYmlibGlvLnJzdCBiL0RvY3Vt
ZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvYmlibGlvLnJzdAo+IGluZGV4IDM1Njc0
ZWVhZTIwZC4uZGYzZTk2M2ZjNTRmIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNw
YWNlLWFwaS9tZWRpYS92NGwvYmlibGlvLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNw
YWNlLWFwaS9tZWRpYS92NGwvYmlibGlvLnJzdAo+IEBAIC00NDcsMyArNDQ3LDEyIEBAIEFWMQo+
IMKgOnRpdGxlOsKgwqDCoMKgIEFWMSBCaXRzdHJlYW0gJiBEZWNvZGluZyBQcm9jZXNzIFNwZWNp
ZmljYXRpb24KPiDCoAo+IMKgOmF1dGhvcjrCoMKgwqAgUGV0ZXIgZGUgUml2YXosIEFyZ29uIERl
c2lnbiBMdGQsIEphY2sgSGF1Z2h0b24sIEFyZ29uIERlc2lnbiBMdGQKPiArCj4gKy4uIF93ZWJw
Ogo+ICsKPiArV0VCUAo+ICs9PT09Cj4gKwo+ICs6dGl0bGU6wqDCoMKgwqAgV0VCUCBwaWN0dXJl
IEJpdHN0cmVhbSAmIERlY29kaW5nIFByb2Nlc3MgU3BlY2lmaWNhdGlvbgo+ICsKPiArOmF1dGhv
cjrCoMKgwqAgR29vZ2xlIChodHRwczovL2RldmVsb3BlcnMuZ29vZ2xlLmNvbS9zcGVlZC93ZWJw
KQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3Bp
eGZtdC1jb21wcmVzc2VkLnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92
NGwvcGl4Zm10LWNvbXByZXNzZWQucnN0Cj4gaW5kZXggODA2ZWQ3M2FjNDc0Li4wOGE5ODk1MTFl
N2QgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9w
aXhmbXQtY29tcHJlc3NlZC5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkv
bWVkaWEvdjRsL3BpeGZtdC1jb21wcmVzc2VkLnJzdAo+IEBAIC0xNjksNiArMTY5LDIzIEBAIENv
bXByZXNzZWQgRm9ybWF0cwo+IMKgCXRoaXMgcGl4ZWwgZm9ybWF0LiBUaGUgb3V0cHV0IGJ1ZmZl
ciBtdXN0IGNvbnRhaW4gdGhlIGFwcHJvcHJpYXRlIG51bWJlcgo+IMKgCW9mIG1hY3JvYmxvY2tz
IHRvIGRlY29kZSBhIGZ1bGwgY29ycmVzcG9uZGluZyBmcmFtZSB0byB0aGUgbWF0Y2hpbmcKPiDC
oAljYXB0dXJlIGJ1ZmZlci4KPiArwqDCoMKgICogLi4gX1Y0TDItUElYLUZNVC1XRUJQLUZSQU1F
Ogo+ICsKPiArwqDCoMKgwqDCoCAtIGBgVjRMMl9QSVhfRk1UX1dFQlBfRlJBTUVgYAo+ICvCoMKg
wqDCoMKgIC0gJ1dFQlAnCgpBZnRlciBwbGVudHkgb2YgdGhpbmtpbmcsIFdlYlAgaXMgYSBjb250
YWluZXIgdGhlIHN1cHBvcnQgMiBjb2RlY3MuIFdlCnNob3VsZCBub3QgbmFtZSB0aGlzIFdlYlAs
IGJ1dCBpbnN0ZWFkIFZQOF9JTlRSQV9GUkFNRS4gTWVhbmluZywgaW50cmEKb25seSBWUDggZGVj
b2Rlci4KCj4gK8KgwqDCoMKgwqAgLSBXRUJQIFZQOCBwYXJzZWQgZnJhbWUsIGV4Y2x1ZGluZyBX
RUJQIFJJRkYgaGVhZGVyLCBrZWVwaW5nIG9ubHkgdGhlIFZQOAo+ICsJYml0c3RyZWFtIGluY2x1
ZGluZyB0aGUgZnJhbWUgaGVhZGVyLCBhcyBleHRyYWN0ZWQgZnJvbSB0aGUgY29udGFpbmVyLgoK
VGhpcyBjb21tZW50IHdpbGwgdGhlbiBub3QgYmUgbmVlZGVkLCBzaW5jZSBWUDhfSU5UUkEgd2ls
bCBtYWtlIGl0CmNsZWFyLgoKcmVnYXJkcywKTmljb2xhcwoKPiArCVRoaXMgZm9ybWF0IGlzIGFk
YXB0ZWQgZm9yIHN0YXRlbGVzcyB2aWRlbyBkZWNvZGVycyB0aGF0IGltcGxlbWVudCBhCj4gKwlX
RUJQIHBpcGVsaW5lIHdpdGggdGhlIDpyZWY6YHN0YXRlbGVzc19kZWNvZGVyYC4KPiArCU1ldGFk
YXRhIGFzc29jaWF0ZWQgd2l0aCB0aGUgZnJhbWUgdG8gZGVjb2RlIGlzIHJlcXVpcmVkIHRvIGJl
IHBhc3NlZAo+ICsJdGhyb3VnaCB0aGUgYGBWNEwyX0NJRF9TVEFURUxFU1NfVlA4X0ZSQU1FYGAg
Y29udHJvbC4KPiArCVNlZSB0aGUgOnJlZjpgYXNzb2NpYXRlZCBDb2RlYyBDb250cm9sIElEcyA8
djRsMi1jb2RlYy1zdGF0ZWxlc3MtdnA4PmAuCj4gKwlCZWNhdXNlIG9mIGtleSBmcmFtZXMgb25s
eSBiaXRzdHJlYW0sIGBgVjRMMl9WUDhfRlJBTUVfRkxBR19LRVlfRlJBTUVgYAo+ICsJZmxhZyBt
dXN0IGJlIHNldCwgc2VlIDpyZWY6YEZyYW1lIEZsYWdzIDx2cDhfZnJhbWVfZmxhZ3M+YC4KPiAr
CUV4YWN0bHkgb25lIG91dHB1dCBhbmQgb25lIGNhcHR1cmUgYnVmZmVyIG11c3QgYmUgcHJvdmlk
ZWQgZm9yIHVzZSB3aXRoCj4gKwl0aGlzIHBpeGVsIGZvcm1hdC4gVGhlIG91dHB1dCBidWZmZXIg
bXVzdCBjb250YWluIHRoZSBhcHByb3ByaWF0ZSBudW1iZXIKPiArCW9mIG1hY3JvYmxvY2tzIHRv
IGRlY29kZSBhIGZ1bGwgY29ycmVzcG9uZGluZyBmcmFtZSB0byB0aGUgbWF0Y2hpbmcKPiArCWNh
cHR1cmUgYnVmZmVyLgo+IMKgCj4gwqDCoMKgwqAgKiAuLiBfVjRMMi1QSVgtRk1ULVZQOToKPiDC
oAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMgYi9k
cml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPiBpbmRleCAwMzA0ZGFhODQ3MWQu
LmUyZmYwM2QwZDc3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwy
LWlvY3RsLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPiBA
QCAtMTUwMSw2ICsxNTAxLDcgQEAgc3RhdGljIHZvaWQgdjRsX2ZpbGxfZm10ZGVzYyhzdHJ1Y3Qg
djRsMl9mbXRkZXNjICpmbXQpCj4gwqAJCWNhc2UgVjRMMl9QSVhfRk1UX1ZDMV9BTk5FWF9MOglk
ZXNjciA9ICJWQy0xIChTTVBURSA0MTJNIEFubmV4IEwpIjsgYnJlYWs7Cj4gwqAJCWNhc2UgVjRM
Ml9QSVhfRk1UX1ZQODoJCWRlc2NyID0gIlZQOCI7IGJyZWFrOwo+IMKgCQljYXNlIFY0TDJfUElY
X0ZNVF9WUDhfRlJBTUU6wqDCoMKgIGRlc2NyID0gIlZQOCBGcmFtZSI7IGJyZWFrOwo+ICsJCWNh
c2UgVjRMMl9QSVhfRk1UX1dFQlBfRlJBTUU6wqDCoMKgIGRlc2NyID0gIldFQlAgVlA4IEZyYW1l
IjsgYnJlYWs7Cj4gwqAJCWNhc2UgVjRMMl9QSVhfRk1UX1ZQOToJCWRlc2NyID0gIlZQOSI7IGJy
ZWFrOwo+IMKgCQljYXNlIFY0TDJfUElYX0ZNVF9WUDlfRlJBTUU6wqDCoMKgIGRlc2NyID0gIlZQ
OSBGcmFtZSI7IGJyZWFrOwo+IMKgCQljYXNlIFY0TDJfUElYX0ZNVF9IRVZDOgkJZGVzY3IgPSAi
SEVWQyI7IGJyZWFrOyAvKiBha2EgSC4yNjUgKi8KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBp
L2xpbnV4L3ZpZGVvZGV2Mi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oCj4gaW5k
ZXggZTdjNGRjZTM5MDA3Li4wOWZmZjI2OWU4NTIgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBp
L2xpbnV4L3ZpZGVvZGV2Mi5oCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5o
Cj4gQEAgLTc1Nyw2ICs3NTcsNyBAQCBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0IHsKPiDCoCNkZWZp
bmUgVjRMMl9QSVhfRk1UX1ZDMV9BTk5FWF9MIHY0bDJfZm91cmNjKCdWJywgJ0MnLCAnMScsICdM
JykgLyogU01QVEUgNDIxTSBBbm5leCBMIGNvbXBsaWFudCBzdHJlYW0gKi8KPiDCoCNkZWZpbmUg
VjRMMl9QSVhfRk1UX1ZQOMKgwqDCoMKgwqAgdjRsMl9mb3VyY2MoJ1YnLCAnUCcsICc4JywgJzAn
KSAvKiBWUDggKi8KPiDCoCNkZWZpbmUgVjRMMl9QSVhfRk1UX1ZQOF9GUkFNRSB2NGwyX2ZvdXJj
YygnVicsICdQJywgJzgnLCAnRicpIC8qIFZQOCBwYXJzZWQgZnJhbWUgKi8KPiArI2RlZmluZSBW
NEwyX1BJWF9GTVRfV0VCUF9GUkFNRSB2NGwyX2ZvdXJjYygnVycsICdCJywgJ1AnLCAnRicpIC8q
IFdFQlAgVlA4IHBhcnNlZCBmcmFtZSAqLwo+IMKgI2RlZmluZSBWNEwyX1BJWF9GTVRfVlA5wqDC
oMKgwqDCoCB2NGwyX2ZvdXJjYygnVicsICdQJywgJzknLCAnMCcpIC8qIFZQOSAqLwo+IMKgI2Rl
ZmluZSBWNEwyX1BJWF9GTVRfVlA5X0ZSQU1FIHY0bDJfZm91cmNjKCdWJywgJ1AnLCAnOScsICdG
JykgLyogVlA5IHBhcnNlZCBmcmFtZSAqLwo+IMKgI2RlZmluZSBWNEwyX1BJWF9GTVRfSEVWQ8Kg
wqDCoMKgIHY0bDJfZm91cmNjKCdIJywgJ0UnLCAnVicsICdDJykgLyogSEVWQyBha2EgSC4yNjUg
Ki8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
