Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EDADC3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 17:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmAojJYMitF8ltjAS/nKHuqnTm9tZOxL3XnMOwCKz9k=; b=pn+0px73Vpml+1
	pKAZfryO8Z85jpIEnnKbR+9mI9yriWht1aooc32CMRcnjop52a7OANWg3afSK17nmpKVFI/9CBnoc
	UKEJ3EQsIvFDKjQ1X7dv1FSK1jHCNbE+ZNxD47c6S8Wahd3LjdbFRT3jYqjNCvjoci1dTT27QfL7E
	BuCoe2fuPAAZSMVEBrqulMDH1YnN/jwZFegpZ63FCxjrSB3u2D1HRtDsY/5ufOG9Ekdi+LNknGj8t
	NoSHE3rxIeKiEujRn9BCAWHKuvDHmWPX5CSAePvId1LhwQaOo244EASgb1k+DvhMeXUt9rbBmQhSj
	Nflt7LTELVWnikn/qvfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0OZ8-00000009U5L-203a;
	Thu, 03 Apr 2025 17:41:22 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0OXJ-00000009Tof-0Iaa;
	Thu, 03 Apr 2025 17:39:30 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so825644f8f.0;
        Thu, 03 Apr 2025 10:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743701967; x=1744306767; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xNO/JA0foT2DpdUYBUk7pcZAoPgEl1mlc8h7/c2UazE=;
        b=F1fWeSTviQkF7rJDQ4KCJOBlqPnvopkEi7awWGOhAmDDR+fh8Xj+Y6tu/qbHvQLZg7
         OAB6/8BYMSuTEJwtCzLwDVLorx+U6EgODwGR4r3w/DuwBwZ4Wd8eswLVJ1ZdsBBJ2qXA
         TYZD8k09WsrkN8Li4Wj1i9ehVlHqHuQicxGJ0d0gMNQvxSzgjN/tiArDFathWPQDyjmS
         QXj+mwV2hJpGHwF/5wlsfpT64md2JmzXXwpb2whNroadyj80+iq2tkvuiOmgPr+lBET6
         roJYsYP6go9GRyHwu98BaJA7mMoyjIM5q+YlEsTzFy3lg115B6Pl6PiOtn1MjXfiAH/O
         1NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743701967; x=1744306767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNO/JA0foT2DpdUYBUk7pcZAoPgEl1mlc8h7/c2UazE=;
        b=nzH9f6AepwTzHMbbFava//Wi2Esa0gX9sfbEs+NeHJwhBY/oIURImY6In5HbdAj6kh
         q1CFOXI9kRga1WhVbFJaq+AtCyvuXJ73MIQ134xo9/9Ty5gtxbA1JNGkqbqpmSom6y7T
         4Wwj8A15yEwzGpT38cl5dmt5UVK0C9IWS0u4POxiabQ2L3GL5eEQuf7otBH1lce1/F0J
         B11UtxJjBM6YtlZCG+0bUmdvLwC4FisScOaSbTiIppT3hbT7Pod7NyiZ5ZSGYktp1N/F
         BS6wbZPeVyNRe10GxQP/rlzKwaVRC/opvM8fkRW5z+u1CXmANRYGAFEPTtjOMqxVaLOQ
         qF7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXkKH4sDDZ3NwuOoUTM29VoRPJRWyQo+CjZ4GPS6YuazsDySj/lTo2bdkY/FX+H3o+yvhs/y/9X/xQwP6JjKqcT@lists.infradead.org, AJvYcCXlYAqKYiyBXAn1eMOlWjK0euq37unbL4cOPpxlmi8XHVM6CBmvBMjJnkN7GcTgMJ+emO2W4IGgeOO9QfQnmyo=@lists.infradead.org, AJvYcCXu9pbp5bYgv5p2neuE6hpVyjMCoCLxSEcyG5nUdlq5Nt00aGi0KhgQmmcDsEIgyJK/Xhf19uUQl3TM@lists.infradead.org
X-Gm-Message-State: AOJu0YyoY55SdushSZIzPO34pJE3OQXBsFrogHswSQ+D1gkgsXxPkvSl
	S6Cxr/lW9RrK66rTa7fKp5/Bw9HflPT2EXkLlYFTlfn5SLlUgqcLroHtNQ==
X-Gm-Gg: ASbGncvotnmKuY42F26PQM+Tg45rLUp8C+6dP5pQPSMhVLLKhRQp6MHhfITzcmeFAWd
	NTHQWBJKkSG6pxZii1RjSZ7X67iSQHZ0G4iYTNnwDVBYVAZHfcjgrh/C9h/rrWHb/U77tpkdNnD
	4N71sDjPzAkZylNZWifGV95Kq6QuzOp3jKqL9QbCZ1KlSBUDc8JLgXav7F/7p7SYG/x4AH43G66
	rQCVGhAkGrqtK5FmwHj3jJbS6MTt85+XFww95pmQKN+n6GUPK5WtsMujdoA4IDhD1TQnenJyfiY
	kb0r5FFJuvbdTY5Ulw5OtweEhbzfHAnHGpSTZGnunFaf958xqZaXwuroHtRUqyMt3CJ934dMGIY
	jjmFqpgSyOKEBN/GW5FH1
X-Google-Smtp-Source: AGHT+IFMIi4hovLxofIkRnajXomszFrujt7/tyePth8kw2e++hEC+Kp0OE+ILwmXrxf3oLN23kvKDw==
X-Received: by 2002:a05:6000:2907:b0:391:4999:778b with SMTP id ffacd0b85a97d-39cb35bda01mr174975f8f.28.1743701966921;
        Thu, 03 Apr 2025 10:39:26 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30096923sm2385018f8f.17.2025.04.03.10.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 10:39:26 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: vkoul@kernel.org, robert.marko@sartura.hr, shao.mingyin@zte.com.cn
Cc: kishon@kernel.org, wens@csie.org, samuel@sholland.org,
 zhang.enpei@zte.com.cn, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, luka.perkov@sartura.hr,
 linux-arm-msm@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, yang.yang29@zte.com.cn,
 xu.xin16@zte.com.cn, ye.xingchen@zte.com.cn
Subject: Re: [PATCH linux-next 1/5] phy: allwinner: phy-sun50i-usb3: Use
 dev_err_probe()
Date: Thu, 03 Apr 2025 19:39:24 +0200
Message-ID: <2773791.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20250402194203426goMMzm9R9_yQBb7SMNGj1@zte.com.cn>
References: <20250402194203426goMMzm9R9_yQBb7SMNGj1@zte.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_103929_109717_D6E0A162 
X-CRM114-Status: GOOD (  13.41  )
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

RG5lIHNyZWRhLCAyLiBhcHJpbCAyMDI1IG9iIDEzOjQyOjAzIFNyZWRuamVldnJvcHNraSBwb2xl
dG5pIMSNYXMgamUgc2hhby5taW5neWluQHp0ZS5jb20uY24gbmFwaXNhbChhKToKPiBGcm9tOiBa
aGFuZyBFbnBlaSA8emhhbmcuZW5wZWlAenRlLmNvbS5jbj4KPiAKPiBSZXBsYWNlIHRoZSBvcGVu
LWNvZGUgd2l0aCBkZXZfZXJyX3Byb2JlKCkgdG8gc2ltcGxpZnkgdGhlIGNvZGUuCj4gCj4gU2ln
bmVkLW9mZi1ieTogWmhhbmcgRW5wZWkgPHpoYW5nLmVucGVpQHp0ZS5jb20uY24+Cj4gU2lnbmVk
LW9mZi1ieTogU2hhbyBNaW5neWluIDxzaGFvLm1pbmd5aW5AenRlLmNvbS5jbj4KCkFja2VkLWJ5
OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgoKQmVzdCByZWdhcmRz
LApKZXJuZWoKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNTBpLXVzYjMu
YyB8IDggKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW41
MGktdXNiMy5jIGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW41MGktdXNiMy5jCj4gaW5k
ZXggMzYzZjlhMGRmNTAzLi5iMDNmYWZmYzE2MGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
YWxsd2lubmVyL3BoeS1zdW41MGktdXNiMy5jCj4gKysrIGIvZHJpdmVycy9waHkvYWxsd2lubmVy
L3BoeS1zdW41MGktdXNiMy5jCj4gQEAgLTE0MSwxMSArMTQxLDkgQEAgc3RhdGljIGludCBzdW41
MGlfdXNiM19waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQlyZXR1
cm4gLUVOT01FTTsKPiAKPiAgCXBoeS0+Y2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgTlVMTCk7Cj4g
LQlpZiAoSVNfRVJSKHBoeS0+Y2xrKSkgewo+IC0JCWlmIChQVFJfRVJSKHBoeS0+Y2xrKSAhPSAt
RVBST0JFX0RFRkVSKQo+IC0JCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgcGh5IGNsb2Nr
XG4iKTsKPiAtCQlyZXR1cm4gUFRSX0VSUihwaHktPmNsayk7Cj4gLQl9Cj4gKwlpZiAoSVNfRVJS
KHBoeS0+Y2xrKSkKPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIocGh5LT5j
bGspLAo+ICsJCQkJICAgICAiZmFpbGVkIHRvIGdldCBwaHkgY2xvY2tcbiIpOwo+IAo+ICAJcGh5
LT5yZXNldCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXQoZGV2LCBOVUxMKTsKPiAgCWlmIChJU19F
UlIocGh5LT5yZXNldCkpIHsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
