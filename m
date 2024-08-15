Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FA5EC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGp4p6tQ16v2Lq6AL13ryG9qWSQHlKAXx17RHQPk8f4=; b=KksuQWZMhT4wyA
	VNYyoAbufNeKJcV6L7YoxcyDCt8nAlZPkNg+N2623PkQWSHhoulsZOfkYJT+3W8ofY3P4NP8/Od8k
	pGEerj1bjaKlCXEDi18iBt+SEalFJi2uwb4DCfcB/hR2V7dUrrn2fukNZhhHx2kq5vodywlS2W+60
	IxbCwg4w8n0b7cndrAJqRjDlXBxUTt5LQVvgb8N5MM94sv4daZr4MRTppSjWkImPxkGTTp6xC0Ikp
	qGMvzh+kKcT0DlyFU1ttNCIMaJj2sIk/YoZ7Ruo4G8EAvHVKv1HfwGQEd7vT8/9CLceiFEOnQfxyT
	N8hP7xF9j7g2aeRD/Gzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sed5S-0000000ATa2-0z3G;
	Thu, 15 Aug 2024 16:12:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sed4o-0000000ATSR-3uEP
	for linux-rockchip@bombadil.infradead.org;
	Thu, 15 Aug 2024 16:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CmmKXkTSfv18XXqIwjwObV4hYMFSw68a2uGYhpp3xv8=; b=FhTltItzEQ5GCMJo4T7/j6bfNj
	G5ts/TtUk4D0SFL9mOT1YdPf13svT1vEoHaYhhokuK47IIZvVLhTS9AUz9UW3W8T4j0BiadiJHRn0
	g75eXLu7SB/qQbL0T+LVPI5BjsvqMIRDnQMomFm4mQdXEE9MjIUKvXgfjl1hBWY/BUqG8f8wYiWuR
	CHi0kYDDe40wiVAX+oWpmaHilhfl9tgK/U8naCKAAXH5nGNmUEnXUt5G4snMH246iNYEL9ny7FJyb
	Pq+Dz6n70cJoI1LIE2Y01w3XaX89U8uEPHYk2P7ePlW2bvbI25wdFN4i0OvkSvx6DKUHCXzCBgXux
	jyTwYVqw==;
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sed4l-00000008RKU-2Mpb
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Aug 2024 16:11:49 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1fd9e6189d5so9997865ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2024 09:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723738304; x=1724343104; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CmmKXkTSfv18XXqIwjwObV4hYMFSw68a2uGYhpp3xv8=;
        b=DAb9MssBmDuFWvgesv4KCiPOXEDsxxM0qdSJGxBXvUewDyzKOd8zC2JwCu3bgQsXn5
         6wfIK7UriKdpKPJ5rsAG1ThbTtmOcSdVRas6Yt71JUu33onPuEwnYHjCmYcFG75NSmlX
         m+4yyKK2tcBrnE04n2mWx9HsBzf7+YrfI/+USPKCVzX8CCVBSBtVmskhZM2Pybl68Z5y
         04oSGouNmt1ziUjiZGNJjauh7YUzc9ZPCAt/BH1gpJWq52jXSxymWbqHa1wTuStMOgW5
         R99wiCNf06ZlHokocNcqztUBV3ldOY572w42jbeWeGV7ZVJymfIf8LtdQSmr+0gFwMsY
         2xmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723738304; x=1724343104;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CmmKXkTSfv18XXqIwjwObV4hYMFSw68a2uGYhpp3xv8=;
        b=QXY5+iw+DumL4eTVyBOg3YJ8Vww0zrg99XHTLe65JXfqnHop7G+v77iBsXSeaovo8m
         ZxJR/Aa6ztY5zO0UUFv2qw4SD0914NYviJZ3SgtlRQ/4U3lsuH1JNyCuwQyBOydqI1IP
         6u/xRI7rOt3M0F6diIeamL6gj1rTqe7yhpY0kHGhtQQeTpi0FVDIdYcZ7pGZn+FRlrGa
         wK44uMJJyzyUL1n+c8n7zE2HFDKacCj5NJ1BgA1bLOKPzXvj8uw80zcvhpRnDe4hKD2h
         FLFh8m80uvleM+ISqiyIslf/r+15cs13JSe4mWvgloOycHjNoe7QxRwV4YCnRRTZCS05
         XBJA==
X-Forwarded-Encrypted: i=1; AJvYcCWwGvP3CfsqeL/O9eh/jNfH4/mwwlIuz4F+RXqApDGLrzW+ctuUwXWNucEi9zhD9FtGwcNg3wGvuR+TJ7J9gDJGeQeE2WA/wemD0PIHY8W0K9b3
X-Gm-Message-State: AOJu0YxC1aPisu7BfhayH4Nu47AFFZfxPQ8y8KH0BB3M7AXDtjuvc1Qt
	ejmwNGEYQOKJzB9Dbxek6TKF54FjkZ2btzMqO/VF4Yqc8Uz0Nb+0bHYXtu/xjw==
X-Google-Smtp-Source: AGHT+IFWxtcnnpbdF8+JXG5md4tBLoccbcE0fgAMYurHfaOl3NuWiXENoKAxePhmU3RYvALN5cfWow==
X-Received: by 2002:a17:902:f686:b0:1fd:5eab:8c76 with SMTP id d9443c01a7336-20203f27db9mr1496955ad.41.1723738303576;
        Thu, 15 Aug 2024 09:11:43 -0700 (PDT)
Received: from thinkpad ([36.255.17.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f1c88834sm10573375ad.255.2024.08.15.09.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 09:11:43 -0700 (PDT)
Date: Thu, 15 Aug 2024 21:41:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
Message-ID: <20240815161135.GE2562@thinkpad>
References: <20240625104039.48311-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240625104039.48311-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_171147_698536_7A301DA7 
X-CRM114-Status: GOOD (  26.03  )
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

T24gVHVlLCBKdW4gMjUsIDIwMjQgYXQgMDQ6MTA6MzJQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBSZWZhY3RvciB0aGUgY2xvY2sgaGFuZGxpbmcgaW4gdGhlIFJvY2tjaGlwIFBDSWUgZHJp
dmVyLAo+IGludHJvZHVjaW5nIGEgbW9yZSByb2J1c3QgYW5kIGVmZmljaWVudCBtZXRob2QgZm9y
IGVuYWJsaW5nIGFuZAo+IGRpc2FibGluZyBjbG9ja3MgdXNpbmcgY2xrX2J1bGsqKCkgQVBJLiBV
c2luZyB0aGUgY2xrX2J1bGsgQVBJcywKPiB0aGUgY2xvY2sgaGFuZGxpbmcgZm9yIHRoZSBjb3Jl
IGNsb2NrcyBiZWNvbWVzIG11Y2ggc2ltcGxlci4KPiAKCldoeSBjYW4ndCB5b3UganVzdCB1c2Ug
ZGV2bV9jbGtfYnVsa19nZXRfYWxsKCk/IFRoaXMgZ2V0cyByaWQgb2YgaGFyZGNvZGluZyB0aGUK
Y2xvY2sgbmFtZXMgaW4gZHJpdmVyLgoKLSBNYW5pCgo+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1v
b24gPGxpbnV4LmFtb29uQGdtYWlsLmNvbT4KPiAtLS0KPiB2NDogdXNlIGRldl9lcnJfcHJvYmUg
Zm9yIGVycm9yIHBhdGNoLgo+IHYzOiBGaXggdHlwbyBpbiBjb21taXQgbWVzc2FnZSwgZHJvcHBl
ZCByZXBvcnRlZCBieS4KPiB2MjogRml4IGNvbXBpbGF0aW9uIGVycm9yIHJlcG9ydGVkIGJ5IElu
dGVsIHRlc3Qgcm9ib3QuCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC5jIHwgNjggKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLmggfCAxNSArKysrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspLCA2MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAuYwo+IGluZGV4IDBlZjJlNjIyZDM2ZS4uODA0MTM1NTExNTI4IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gKysrIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiBAQCAtMzAsNyArMzAsNyBA
QCBpbnQgcm9ja2NoaXBfcGNpZV9wYXJzZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2No
aXApCj4gIAlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gdG9fcGxhdGZvcm1fZGV2aWNl
KGRldik7Cj4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9mX25vZGU7Cj4gIAlz
dHJ1Y3QgcmVzb3VyY2UgKnJlZ3M7Cj4gLQlpbnQgZXJyOwo+ICsJaW50IGVyciwgaTsKPiAgCj4g
IAlpZiAocm9ja2NoaXAtPmlzX3JjKSB7Cj4gIAkJcmVncyA9IHBsYXRmb3JtX2dldF9yZXNvdXJj
ZV9ieW5hbWUocGRldiwKPiBAQCAtMTI3LDI5ICsxMjcsMTIgQEAgaW50IHJvY2tjaGlwX3BjaWVf
cGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAJCQkJCSAgICAgImZh
aWxlZCB0byBnZXQgZXAgR1BJT1xuIik7Cj4gIAl9Cj4gIAo+IC0Jcm9ja2NoaXAtPmFjbGtfcGNp
ZSA9IGRldm1fY2xrX2dldChkZXYsICJhY2xrIik7Cj4gLQlpZiAoSVNfRVJSKHJvY2tjaGlwLT5h
Y2xrX3BjaWUpKSB7Cj4gLQkJZGV2X2VycihkZXYsICJhY2xrIGNsb2NrIG5vdCBmb3VuZFxuIik7
Cj4gLQkJcmV0dXJuIFBUUl9FUlIocm9ja2NoaXAtPmFjbGtfcGNpZSk7Cj4gLQl9Cj4gLQo+IC0J
cm9ja2NoaXAtPmFjbGtfcGVyZl9wY2llID0gZGV2bV9jbGtfZ2V0KGRldiwgImFjbGstcGVyZiIp
Owo+IC0JaWYgKElTX0VSUihyb2NrY2hpcC0+YWNsa19wZXJmX3BjaWUpKSB7Cj4gLQkJZGV2X2Vy
cihkZXYsICJhY2xrX3BlcmYgY2xvY2sgbm90IGZvdW5kXG4iKTsKPiAtCQlyZXR1cm4gUFRSX0VS
Uihyb2NrY2hpcC0+YWNsa19wZXJmX3BjaWUpOwo+IC0JfQo+IC0KPiAtCXJvY2tjaGlwLT5oY2xr
X3BjaWUgPSBkZXZtX2Nsa19nZXQoZGV2LCAiaGNsayIpOwo+IC0JaWYgKElTX0VSUihyb2NrY2hp
cC0+aGNsa19wY2llKSkgewo+IC0JCWRldl9lcnIoZGV2LCAiaGNsayBjbG9jayBub3QgZm91bmRc
biIpOwo+IC0JCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5oY2xrX3BjaWUpOwo+IC0JfQo+ICsJ
Zm9yIChpID0gMDsgaSA8IFJPQ0tDSElQX05VTV9DTEtTOyBpKyspCj4gKwkJcm9ja2NoaXAtPmNs
a3NbaV0uaWQgPSByb2NrY2hpcF9wY2lfY2xrc1tpXTsKPiAgCj4gLQlyb2NrY2hpcC0+Y2xrX3Bj
aWVfcG0gPSBkZXZtX2Nsa19nZXQoZGV2LCAicG0iKTsKPiAtCWlmIChJU19FUlIocm9ja2NoaXAt
PmNsa19wY2llX3BtKSkgewo+IC0JCWRldl9lcnIoZGV2LCAicG0gY2xvY2sgbm90IGZvdW5kXG4i
KTsKPiAtCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+Y2xrX3BjaWVfcG0pOwo+IC0JfQo+ICsJ
ZXJyID0gZGV2bV9jbGtfYnVsa19nZXQoZGV2LCBST0NLQ0hJUF9OVU1fQ0xLUywgcm9ja2NoaXAt
PmNsa3MpOwo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIGVyciwg
ImZhaWxlZCB0byBnZXQgY2xvY2tzXG4iKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC0z
NzIsMzkgKzM1NSwxMSBAQCBpbnQgcm9ja2NoaXBfcGNpZV9lbmFibGVfY2xvY2tzKHN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlw
LT5kZXY7Cj4gIAlpbnQgZXJyOwo+ICAKPiAtCWVyciA9IGNsa19wcmVwYXJlX2VuYWJsZShyb2Nr
Y2hpcC0+YWNsa19wY2llKTsKPiAtCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyKGRldiwgInVuYWJs
ZSB0byBlbmFibGUgYWNsa19wY2llIGNsb2NrXG4iKTsKPiAtCQlyZXR1cm4gZXJyOwo+IC0JfQo+
IC0KPiAtCWVyciA9IGNsa19wcmVwYXJlX2VuYWJsZShyb2NrY2hpcC0+YWNsa19wZXJmX3BjaWUp
Owo+IC0JaWYgKGVycikgewo+IC0JCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGVuYWJsZSBhY2xr
X3BlcmZfcGNpZSBjbG9ja1xuIik7Cj4gLQkJZ290byBlcnJfYWNsa19wZXJmX3BjaWU7Cj4gLQl9
Cj4gLQo+IC0JZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKHJvY2tjaGlwLT5oY2xrX3BjaWUpOwo+
IC0JaWYgKGVycikgewo+IC0JCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGVuYWJsZSBoY2xrX3Bj
aWUgY2xvY2tcbiIpOwo+IC0JCWdvdG8gZXJyX2hjbGtfcGNpZTsKPiAtCX0KPiAtCj4gLQllcnIg
PSBjbGtfcHJlcGFyZV9lbmFibGUocm9ja2NoaXAtPmNsa19wY2llX3BtKTsKPiAtCWlmIChlcnIp
IHsKPiAtCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byBlbmFibGUgY2xrX3BjaWVfcG0gY2xvY2tc
biIpOwo+IC0JCWdvdG8gZXJyX2Nsa19wY2llX3BtOwo+IC0JfQo+ICsJZXJyID0gY2xrX2J1bGtf
cHJlcGFyZV9lbmFibGUoUk9DS0NISVBfTlVNX0NMS1MsIHJvY2tjaGlwLT5jbGtzKTsKPiArCWlm
IChlcnIpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJmYWlsZWQgdG8gZW5h
YmxlIGNsb2Nrc1xuIik7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gLQo+IC1lcnJfY2xrX3BjaWVfcG06
Cj4gLQljbGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmhjbGtfcGNpZSk7Cj4gLWVycl9o
Y2xrX3BjaWU6Cj4gLQljbGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmFjbGtfcGVyZl9w
Y2llKTsKPiAtZXJyX2FjbGtfcGVyZl9wY2llOgo+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJv
Y2tjaGlwLT5hY2xrX3BjaWUpOwo+IC0JcmV0dXJuIGVycjsKPiAgfQo+ICBFWFBPUlRfU1lNQk9M
X0dQTChyb2NrY2hpcF9wY2llX2VuYWJsZV9jbG9ja3MpOwo+ICAKPiBAQCAtNDEyLDEwICszNjcs
NyBAQCB2b2lkIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9jbG9ja3Modm9pZCAqZGF0YSkKPiAgewo+
ICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gZGF0YTsKPiAgCj4gLQljbGtfZGlz
YWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19wY2llX3BtKTsKPiAtCWNsa19kaXNhYmxlX3Vu
cHJlcGFyZShyb2NrY2hpcC0+aGNsa19wY2llKTsKPiAtCWNsa19kaXNhYmxlX3VucHJlcGFyZShy
b2NrY2hpcC0+YWNsa19wZXJmX3BjaWUpOwo+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJvY2tj
aGlwLT5hY2xrX3BjaWUpOwo+ICsJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUoUk9DS0NISVBf
TlVNX0NMS1MsIHJvY2tjaGlwLT5jbGtzKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChyb2Nr
Y2hpcF9wY2llX2Rpc2FibGVfY2xvY2tzKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLmgKPiBpbmRleCA2MTExZGUzNWY4NGMuLjcyMzQ2ZTE3ZTQ1ZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gQEAgLTExLDYgKzExLDcgQEAKPiAg
I2lmbmRlZiBfUENJRV9ST0NLQ0hJUF9ICj4gICNkZWZpbmUgX1BDSUVfUk9DS0NISVBfSAo+ICAK
PiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9wY2kuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BjaS1lY2FtLmg+Cj4g
QEAgLTI4Nyw2ICsyODgsMTUgQEAKPiAgCQkoKChjKSA8PCAoKGIpICogOCArIDUpKSAmIFwKPiAg
CQkgUk9DS0NISVBfUENJRV9DT1JFX0VQX0ZVTkNfQkFSX0NGR19CQVJfQ1RSTF9NQVNLKGIpKQo+
ICAKPiArI2RlZmluZSBST0NLQ0hJUF9OVU1fQ0xLUwlBUlJBWV9TSVpFKHJvY2tjaGlwX3BjaV9j
bGtzKQo+ICsKPiArc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCByb2NrY2hpcF9wY2lfY2xrc1td
ID0gewo+ICsJImFjbGsiLAo+ICsJImFjbGstcGVyZiIsCj4gKwkiaGNsayIsCj4gKwkicG0iLAo+
ICt9Owo+ICsKPiAgc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+ICAJdm9pZAlfX2lvbWVtICpyZWdf
YmFzZTsJCS8qIERUIGF4aS1iYXNlICovCj4gIAl2b2lkCV9faW9tZW0gKmFwYl9iYXNlOwkJLyog
RFQgYXBiLWJhc2UgKi8KPiBAQCAtMjk5LDEwICszMDksNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcGNp
ZSB7Cj4gIAlzdHJ1Y3QJcmVzZXRfY29udHJvbCAqcG1fcnN0Owo+ICAJc3RydWN0CXJlc2V0X2Nv
bnRyb2wgKmFjbGtfcnN0Owo+ICAJc3RydWN0CXJlc2V0X2NvbnRyb2wgKnBjbGtfcnN0Owo+IC0J
c3RydWN0CWNsayAqYWNsa19wY2llOwo+IC0Jc3RydWN0CWNsayAqYWNsa19wZXJmX3BjaWU7Cj4g
LQlzdHJ1Y3QJY2xrICpoY2xrX3BjaWU7Cj4gLQlzdHJ1Y3QJY2xrICpjbGtfcGNpZV9wbTsKPiAr
CXN0cnVjdCAgY2xrX2J1bGtfZGF0YSBjbGtzW1JPQ0tDSElQX05VTV9DTEtTXTsKPiAgCXN0cnVj
dAlyZWd1bGF0b3IgKnZwY2llMTJ2OyAvKiAxMlYgcG93ZXIgc3VwcGx5ICovCj4gIAlzdHJ1Y3QJ
cmVndWxhdG9yICp2cGNpZTN2MzsgLyogMy4zViBwb3dlciBzdXBwbHkgKi8KPiAgCXN0cnVjdAly
ZWd1bGF0b3IgKnZwY2llMXY4OyAvKiAxLjhWIHBvd2VyIHN1cHBseSAqLwo+IAo+IGJhc2UtY29t
bWl0OiAzNWJiNjcwZDY1ZmMwZjgwYzYyMzgzYWI0ZjI1NDRjZWM4NWFjNTdhCj4gLS0gCj4gMi40
NC4wCj4gCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
