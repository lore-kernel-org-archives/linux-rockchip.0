Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA10AC54791
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 19:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOgGX2gJ2QGkCYez7x5PrR67OJdu9jsTqwcxmLytvZM=; b=b82ce3E8eMq1C9
	DRruvfY9Zxo4ewUmsHFST9mBHU4VOTIx89o1OVVBuM1ZcHEeb0ONbKqzXOhxz7pjWi8LXbJ34p7yy
	fXM9FN/NyhDVN2RuVI4HJiDgXDwiV3MInPH8Mz8r5+KtcJakxLN/RViBKtPklj4p9pdQSbR+g0OJH
	UnD3CvPjSf8hLZjHs7ZK5hSpjjzCWb1FL3saTezyBpJnrdRjaGJNgHijXtZmEDFBzjhQqZI0Orlqf
	lRXtF9DcICb9mhLve4DCnSNfq0k54SV6JUHOg5zNd9BthxnkBmH8GQM1mfKik03kDiGWziditQBjE
	jftntY4qZ9T2rAq8qnVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEWV-00000006Hdn-1FWR;
	Thu, 22 Feb 2024 19:14:23 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEWR-00000006Hb0-17QU;
	Thu, 22 Feb 2024 19:14:20 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a3f4464c48dso7555866b.3;
        Thu, 22 Feb 2024 11:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708629255; x=1709234055; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=edVmxwSP8F253S2ziQ2zDxNJAvn61Q4xr461VKmjj14=;
        b=koQLL+Dy0TvgXfy7rNoiE6/Gih3LRbTeHBBiHV94IO7O8nQ4QIjKvCxXpqWQJjUSPl
         cIEhlsr0waxHQOqdqbz3W6SbZSwbFslEZqvIVUzmn6Zh2a6H0SdJfxJlSJkm7f8osSeF
         f6jE/ueje2qtvUopDJitvqRgvgsVDFEUkF61zlI85hnTGf2cxQyza056TVtGlWRidcHY
         O7Ro5BQnuYmpxbzWgZrydHfYJVIV+nc/nWK+HWvCoC2L1jYzJSFm8H0vHRqcO70FKTb0
         VGLit8UfavI1RLV4JhCP3IO5wMZPDZljGPZTYT7VdRrgUdGf1Z8dp/RAgQi4a4KnltQ9
         AyMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708629255; x=1709234055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=edVmxwSP8F253S2ziQ2zDxNJAvn61Q4xr461VKmjj14=;
        b=P8JdQMMLMJCJtEddRbULryvA6lfrTXZFvAYnvrU6K3uCS7lyF6LVnNPOeJyjw0fBRm
         FkJIWEBaRxU25x1BAdCRTEdMpYB3UyucMpS7KiOb3wOl6BTbxp7jaM6rDoxcwaDHJMal
         qkCFm+rmW+k90qacrC9GMIPr0pQgTDBbl6oiz8ORarmvGlTehl/SUtE4ywiOODx4FOru
         kJmB8TPxFZmRnE2oZYPrS0R3df7VArxups8XkSMmYNs0jZ6oBJnRWjVxCDadAdESz4ok
         pXdg8OFfjNnEeTrwvXaskDhk5LLSnl6758lwxIxuj5x9jBMQ+0CdZ7xj3FfTiR362FI7
         pdVw==
X-Forwarded-Encrypted: i=1; AJvYcCX0a9GPR5h4ikrN5OOWuxOMcmX5UDXJjpaNT8cMI99c130yRO0FMXgc3GTinsi9KQtaeYUvcjZhN7wcbQiwvCAjBvLNVY5r9Q5xp5dBeFk+R/V1n99UOBypuIeuLwnDKuJkTEldIpX8QT1I6kZBLuEAJP/G7e7rWzg=
X-Gm-Message-State: AOJu0YynOk3WIMAKb1wMP4O67RlNYjGKqopr8xMIiZgbp1N561+t2gc7
	NMBHH7pYXa52tIjM2x8Bfgu2w0LhLNbmbufOIDQNd7c5l4P0MXPC
X-Google-Smtp-Source: AGHT+IGJnuh5knoqwFurZPclruNoFy29+PgrIe7JAmBNkID3j7bYRW/rEkP5PwLYezHAgNQTB1U/6A==
X-Received: by 2002:a17:906:6c96:b0:a3f:2272:f26c with SMTP id s22-20020a1709066c9600b00a3f2272f26cmr5504108ejr.50.1708629254832;
        Thu, 22 Feb 2024 11:14:14 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id tl23-20020a170907c31700b00a3fa5cf6d15sm352471ejc.191.2024.02.22.11.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 11:14:14 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v7 36/36] drm/sun4i: hdmi: Switch to HDMI connector
Date: Thu, 22 Feb 2024 20:14:12 +0100
Message-ID: <8335826.T7Z3S40VBb@jernej-laptop>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-36-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-36-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_111419_332581_C7C95E76 
X-CRM114-Status: GOOD (  25.06  )
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

RG5lIMSNZXRydGVrLCAyMi4gZmVicnVhciAyMDI0IG9iIDE5OjE0OjIyIENFVCBqZSBNYXhpbWUg
UmlwYXJkIG5hcGlzYWwoYSk6Cj4gVGhlIG5ldyBIRE1JIGNvbm5lY3RvciBpbmZyYXN0cnVjdHVy
ZSBhbGxvd3MgdG8gcmVtb3ZlIHNvbWUgYm9pbGVycGxhdGUsCj4gZXNwZWNpYWxseSB0byBnZW5l
cmF0ZSBpbmZvZnJhbWVzLiBMZXQncyBzd2l0Y2ggdG8gaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IEplcm5laiBT
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlfZW5jLmMgfCA4MCArKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNl
cnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3N1bjRpL3N1bjRpX2hkbWlfZW5jLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlf
aGRtaV9lbmMuYwo+IGluZGV4IGI3Y2YzNjliMTkwNi4uOGE5MTA2YTM5ZjIzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1pX2VuYy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlfZW5jLmMKPiBAQCAtMzYsMzAgKzM2LDI0IEBACj4g
ICNkZWZpbmUgZHJtX2Nvbm5lY3Rvcl90b19zdW40aV9oZG1pKGMpCQlcCj4gIAljb250YWluZXJf
b2ZfY29uc3QoYywgc3RydWN0IHN1bjRpX2hkbWksIGNvbm5lY3RvcikKPiAgCj4gLXN0YXRpYyBp
bnQgc3VuNGlfaGRtaV9zZXR1cF9hdmlfaW5mb2ZyYW1lcyhzdHJ1Y3Qgc3VuNGlfaGRtaSAqaGRt
aSwKPiAtCQkJCQkgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiArc3RhdGljIGlu
dCBzdW40aV9oZG1pX3dyaXRlX2luZm9mcmFtZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yLAo+ICsJCQkJICAgICAgZW51bSBoZG1pX2luZm9mcmFtZV90eXBlIHR5cGUsCj4gKwkJCQkg
ICAgICBjb25zdCB1OCAqYnVmZmVyLCBzaXplX3QgbGVuKQo+ICB7Cj4gLQlzdHJ1Y3QgaGRtaV9h
dmlfaW5mb2ZyYW1lIGZyYW1lOwo+IC0JdTggYnVmZmVyWzE3XTsKPiAtCWludCBpLCByZXQ7Cj4g
KwlzdHJ1Y3Qgc3VuNGlfaGRtaSAqaGRtaSA9IGRybV9jb25uZWN0b3JfdG9fc3VuNGlfaGRtaShj
b25uZWN0b3IpOwo+ICsJaW50IGk7Cj4gIAo+IC0JcmV0ID0gZHJtX2hkbWlfYXZpX2luZm9mcmFt
ZV9mcm9tX2Rpc3BsYXlfbW9kZSgmZnJhbWUsCj4gLQkJCQkJCSAgICAgICAmaGRtaS0+Y29ubmVj
dG9yLCBtb2RlKTsKPiAtCWlmIChyZXQgPCAwKSB7Cj4gLQkJRFJNX0VSUk9SKCJGYWlsZWQgdG8g
Z2V0IGluZm9mcmFtZXMgZnJvbSBtb2RlXG4iKTsKPiAtCQlyZXR1cm4gcmV0Owo+ICsJaWYgKHR5
cGUgIT0gSERNSV9JTkZPRlJBTUVfVFlQRV9BVkkpIHsKPiArCQlkcm1fZXJyKGNvbm5lY3Rvci0+
ZGV2LAo+ICsJCQkiVW5zdXBwb3J0ZWQgaW5mb2ZyYW1lIHR5cGU6ICV1XG4iLCB0eXBlKTsKPiAr
CQlyZXR1cm4gMDsKPiAgCX0KPiAgCj4gLQlyZXQgPSBoZG1pX2F2aV9pbmZvZnJhbWVfcGFjaygm
ZnJhbWUsIGJ1ZmZlciwgc2l6ZW9mKGJ1ZmZlcikpOwo+IC0JaWYgKHJldCA8IDApIHsKPiAtCQlE
Uk1fRVJST1IoIkZhaWxlZCB0byBwYWNrIGluZm9mcmFtZXNcbiIpOwo+IC0JCXJldHVybiByZXQ7
Cj4gLQl9Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IHNpemVvZihidWZmZXIpOyBpKyspCj4gKwlm
b3IgKGkgPSAwOyBpIDwgbGVuOyBpKyspCj4gIAkJd3JpdGViKGJ1ZmZlcltpXSwgaGRtaS0+YmFz
ZSArIFNVTjRJX0hETUlfQVZJX0lORk9GUkFNRV9SRUcoaSkpOwo+ICAKPiAgCXJldHVybiAwOwo+
ICsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgc3VuNGlfaGRtaV9kaXNhYmxlKHN0cnVjdCBkcm1f
ZW5jb2RlciAqZW5jb2RlciwKPiBAQCAtODIsMTQgKzc2LDE4IEBAIHN0YXRpYyB2b2lkIHN1bjRp
X2hkbWlfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKPiAgewo+ICAJc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPSAmZW5jb2Rlci0+Y3J0Yy0+c3RhdGUtPmFkanVzdGVk
X21vZGU7Cj4gIAlzdHJ1Y3Qgc3VuNGlfaGRtaSAqaGRtaSA9IGRybV9lbmNvZGVyX3RvX3N1bjRp
X2hkbWkoZW5jb2Rlcik7Cj4gLQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqZGlzcGxheSA9ICZo
ZG1pLT5jb25uZWN0b3IuZGlzcGxheV9pbmZvOwo+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciA9ICZoZG1pLT5jb25uZWN0b3I7Cj4gKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAq
ZGlzcGxheSA9ICZjb25uZWN0b3ItPmRpc3BsYXlfaW5mbzsKPiArCXN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpjb25uX3N0YXRlID0KPiArCQlkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9y
X3N0YXRlKHN0YXRlLCBjb25uZWN0b3IpOwo+ICsJdW5zaWduZWQgbG9uZyBsb25nIHRtZHNfcmF0
ZSA9IGNvbm5fc3RhdGUtPmhkbWkudG1kc19jaGFyX3JhdGU7Cj4gIAl1bnNpZ25lZCBpbnQgeCwg
eTsKPiAgCXUzMiB2YWwgPSAwOwo+ICAKPiAgCURSTV9ERUJVR19EUklWRVIoIkVuYWJsaW5nIHRo
ZSBIRE1JIE91dHB1dFxuIik7Cj4gIAo+IC0JY2xrX3NldF9yYXRlKGhkbWktPm1vZF9jbGssIG1v
ZGUtPmNydGNfY2xvY2sgKiAxMDAwKTsKPiAtCWNsa19zZXRfcmF0ZShoZG1pLT50bWRzX2Nsaywg
bW9kZS0+Y3J0Y19jbG9jayAqIDEwMDApOwo+ICsJY2xrX3NldF9yYXRlKGhkbWktPm1vZF9jbGss
IHRtZHNfcmF0ZSk7Cj4gKwljbGtfc2V0X3JhdGUoaGRtaS0+dG1kc19jbGssIHRtZHNfcmF0ZSk7
Cj4gIAo+ICAJLyogU2V0IGlucHV0IHN5bmMgZW5hYmxlICovCj4gIAl3cml0ZWwoU1VONElfSERN
SV9VTktOT1dOX0lOUFVUX1NZTkMsCj4gQEAgLTE0Miw3ICsxNDAsOCBAQCBzdGF0aWMgdm9pZCBz
dW40aV9oZG1pX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gIAo+ICAJY2xr
X3ByZXBhcmVfZW5hYmxlKGhkbWktPnRtZHNfY2xrKTsKPiAgCj4gLQlzdW40aV9oZG1pX3NldHVw
X2F2aV9pbmZvZnJhbWVzKGhkbWksIG1vZGUpOwo+ICsJZHJtX2F0b21pY19oZWxwZXJfY29ubmVj
dG9yX2hkbWlfdXBkYXRlX2luZm9mcmFtZXMoY29ubmVjdG9yLCBzdGF0ZSk7Cj4gKwo+ICAJdmFs
IHw9IFNVTjRJX0hETUlfUEtUX0NUUkxfVFlQRSgwLCBTVU40SV9IRE1JX1BLVF9BVkkpOwo+ICAJ
dmFsIHw9IFNVTjRJX0hETUlfUEtUX0NUUkxfVFlQRSgxLCBTVU40SV9IRE1JX1BLVF9FTkQpOwo+
ICAJd3JpdGVsKHZhbCwgaGRtaS0+YmFzZSArIFNVTjRJX0hETUlfUEtUX0NUUkxfUkVHKDApKTsK
PiBAQCAtMTk1LDcgKzE5NCw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfaGRtaV9jb25uZWN0b3JfYXRv
bWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAllbnVtIGRybV9t
b2RlX3N0YXR1cyBzdGF0dXM7Cj4gIAo+ICAJc3RhdHVzID0gc3VuNGlfaGRtaV9jb25uZWN0b3Jf
Y2xvY2tfdmFsaWQoY29ubmVjdG9yLCBtb2RlLAo+IC0JCQkJCQkgIG1vZGUtPmNsb2NrICogMTAw
MCk7Cj4gKwkJCQkJCSAgY29ubl9zdGF0ZS0+aGRtaS50bWRzX2NoYXJfcmF0ZSk7Cj4gIAlpZiAo
c3RhdHVzICE9IE1PREVfT0spCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IEBAIC0yMDYsOCAr
MjA1LDExIEBAIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cwo+ICBzdW40aV9oZG1pX2Nvbm5l
Y3Rvcl9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAkJCQlz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiAgewo+IC0JcmV0dXJuIHN1bjRpX2hkbWlf
Y29ubmVjdG9yX2Nsb2NrX3ZhbGlkKGNvbm5lY3RvciwgbW9kZSwKPiAtCQkJCQkJbW9kZS0+Y2xv
Y2sgKiAxMDAwKTsKPiArCXVuc2lnbmVkIGxvbmcgbG9uZyByYXRlID0KPiArCQlkcm1fY29ubmVj
dG9yX2hkbWlfY29tcHV0ZV9tb2RlX2Nsb2NrKG1vZGUsIDgsCj4gKwkJCQkJCSAgICAgIEhETUlf
Q09MT1JTUEFDRV9SR0IpOwo+ICsKPiArCXJldHVybiBzdW40aV9oZG1pX2Nvbm5lY3Rvcl9jbG9j
a192YWxpZChjb25uZWN0b3IsIG1vZGUsIHJhdGUpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IHN1
bjRpX2hkbWlfZ2V0X21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gQEAg
LTI1Myw2ICsyNTUsMTEgQEAgc3RhdGljIHN0cnVjdCBpMmNfYWRhcHRlciAqc3VuNGlfaGRtaV9n
ZXRfZGRjKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCXJldHVybiBkZGM7Cj4gIH0KPiAgCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9oZG1pX2Z1bmNzIHN1bjRpX2hkbWlfaGRt
aV9jb25uZWN0b3JfZnVuY3MgPSB7Cj4gKwkudG1kc19jaGFyX3JhdGVfdmFsaWQJPSBzdW40aV9o
ZG1pX2Nvbm5lY3Rvcl9jbG9ja192YWxpZCwKPiArCS53cml0ZV9pbmZvZnJhbWUJPSBzdW40aV9o
ZG1pX3dyaXRlX2luZm9mcmFtZSwKPiArfTsKPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJt
X2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3Mgc3VuNGlfaGRtaV9jb25uZWN0b3JfaGVscGVyX2Z1bmNz
ID0gewo+ICAJLmF0b21pY19jaGVjawk9IHN1bjRpX2hkbWlfY29ubmVjdG9yX2F0b21pY19jaGVj
aywKPiAgCS5tb2RlX3ZhbGlkCT0gc3VuNGlfaGRtaV9jb25uZWN0b3JfbW9kZV92YWxpZCwKPiBA
QCAtMjc0LDExICsyODEsMTcgQEAgc3VuNGlfaGRtaV9jb25uZWN0b3JfZGV0ZWN0KHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsIGJvb2wgZm9yY2UpCj4gIAlyZXR1cm4gY29ubmVjdG9y
X3N0YXR1c19jb25uZWN0ZWQ7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHN1bjRpX2hkbWlfY29u
bmVjdG9yX3Jlc2V0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gK3sKPiArCWRy
bV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9yZXNldChjb25uZWN0b3IpOwo+ICsJX19kcm1fYXRv
bWljX2hlbHBlcl9jb25uZWN0b3JfaGRtaV9yZXNldChjb25uZWN0b3IsIGNvbm5lY3Rvci0+c3Rh
dGUpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3JfZnVuY3Mg
c3VuNGlfaGRtaV9jb25uZWN0b3JfZnVuY3MgPSB7Cj4gIAkuZGV0ZWN0CQkJPSBzdW40aV9oZG1p
X2Nvbm5lY3Rvcl9kZXRlY3QsCj4gIAkuZmlsbF9tb2RlcwkJPSBkcm1faGVscGVyX3Byb2JlX3Np
bmdsZV9jb25uZWN0b3JfbW9kZXMsCj4gIAkuZGVzdHJveQkJPSBkcm1fY29ubmVjdG9yX2NsZWFu
dXAsCj4gLQkucmVzZXQJCQk9IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9yZXNldCwKPiAr
CS5yZXNldAkJCT0gc3VuNGlfaGRtaV9jb25uZWN0b3JfcmVzZXQsCj4gIAkuYXRvbWljX2R1cGxp
Y2F0ZV9zdGF0ZQk9IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUs
Cj4gIAkuYXRvbWljX2Rlc3Ryb3lfc3RhdGUJPSBkcm1fYXRvbWljX2hlbHBlcl9jb25uZWN0b3Jf
ZGVzdHJveV9zdGF0ZSwKPiAgfTsKPiBAQCAtNjM3LDEwICs2NTAsMTkgQEAgc3RhdGljIGludCBz
dW40aV9oZG1pX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIs
Cj4gIAo+ICAJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfYWRkKCZoZG1pLT5jb25uZWN0b3IsCj4gIAkJ
CQkgJnN1bjRpX2hkbWlfY29ubmVjdG9yX2hlbHBlcl9mdW5jcyk7Cj4gLQlyZXQgPSBkcm1fY29u
bmVjdG9yX2luaXRfd2l0aF9kZGMoZHJtLCAmaGRtaS0+Y29ubmVjdG9yLAo+IC0JCQkJCSAgJnN1
bjRpX2hkbWlfY29ubmVjdG9yX2Z1bmNzLAo+IC0JCQkJCSAgRFJNX01PREVfQ09OTkVDVE9SX0hE
TUlBLAo+IC0JCQkJCSAgaGRtaS0+ZGRjX2kyYyk7Cj4gKwlyZXQgPSBkcm1tX2Nvbm5lY3Rvcl9o
ZG1pX2luaXQoZHJtLCAmaGRtaS0+Y29ubmVjdG9yLAo+ICsJCQkJICAgICAgIC8qCj4gKwkJCQkJ
KiBOT1RFOiBUaG9zZSBhcmUgbGlrZWx5IHRvIGJlCj4gKwkJCQkJKiB3cm9uZywgYnV0IEkgY291
bGRuJ3QgZmluZCB0aGUKPiArCQkJCQkqIGFjdHVhbCBvbmVzIGluIHRoZSBCU1AuCj4gKwkJCQkJ
Ki8KPiArCQkJCSAgICAgICAiQVciLCAiSERNSSIsCj4gKwkJCQkgICAgICAgJnN1bjRpX2hkbWlf
Y29ubmVjdG9yX2Z1bmNzLAo+ICsJCQkJICAgICAgICZzdW40aV9oZG1pX2hkbWlfY29ubmVjdG9y
X2Z1bmNzLAo+ICsJCQkJICAgICAgIERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSwKPiArCQkJCSAg
ICAgICBoZG1pLT5kZGNfaTJjLAo+ICsJCQkJICAgICAgIEJJVChIRE1JX0NPTE9SU1BBQ0VfUkdC
KSwKPiArCQkJCSAgICAgICA4KTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfZXJyKGRldiwKPiAg
CQkJIkNvdWxkbid0IGluaXRpYWxpc2UgdGhlIEhETUkgY29ubmVjdG9yXG4iKTsKPiAKPiAKCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
