Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45141C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 20:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phdVMwcZaEwDmJk51JlMmQN/nZI7XFeXJnouhdhXNgk=; b=bxurX2PeA9n/x5
	0DtBc3JCPxrihlUrlNH8fRzjzEp5ZQpgnKhVtyqmogTAv6cmtdWCtuFAYq/bWZqwIlTkSMvddlvDu
	wz/Zaot2mig/x/FJ8V/TfR2COiWkKvwuXmBTMSkxJwzNroAbmeKppGTx93DXGn9KjzVVyp0ymQLmE
	A7e3y+VLL9gAs+GXjgW3NCaafxUoKDh3vAY6WXpwt0mm+WzF3mMzlUNhH46Zh6hDRAEkSMk0THNIb
	To50ERe/mthKLgp+aFF1VSWgdjvGk27c5DhS4nNX2oS4mNuWBLsHKaeewHbnJD1Jyw53nlDTE4CH4
	rLEvaDWMsQphCrYwhRrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MtD-0029AZ-0o; Mon, 19 Dec 2022 20:37:35 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MtB-00294V-6U
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 20:37:34 +0000
Received: by mail-qt1-x834.google.com with SMTP id x11so9291671qtv.13
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 12:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D121soTYfgdsSiMhqDo8vXYbl/2/UB4vZ7pkm+XbiQI=;
        b=KAx+X75c2L8IRTwtnT6HXVcOR3BXZjT7XpmjTK8mxw+h17ed9ekmlGtYac4lRZznaz
         w5eaXCjP8zJCDz4NgPFI3L6sVD7Y/tzL42HHbi80o1REoVsOiYssHbc+M2EMMiscGncU
         BU9jIjgMZfDUd/KvhAg+6+y4UyOoRM7qAjvqJRdNT41YJ9HbWoSJJW7/6S06EWjJvvnl
         Z1Y+cOVNZ3vlCib2fCy3+pxcID1wxbEnIi29E6cpM+NUBDIvAOaYSQYNl1Q3JkPuNBQg
         jDQe/bkLJWIGVDBxkls+AkK5YJL8VyhT3fIi+dmV3iogxvoKJAX9HIhbQ50e1xiH1QJL
         SRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D121soTYfgdsSiMhqDo8vXYbl/2/UB4vZ7pkm+XbiQI=;
        b=lFZ1gruzU32rwFyBnrKD6B5Ik7HQNfpYjzl9/74l/S6LcvOpqFhTW3By8t5RBSSSoi
         22u7WEpG5K1FC52R0Np7MGGenh64AmCqBh9lw+nJJk5PjGyN+z6/3FFnr+vnbxGyrf01
         wGEQJz8QY/ohK8KTYRzNfluqMzFB9o6GInbqVPPpo6t0zaJYzTgLlIcH9f3zCSSRpQUG
         oUwUW4GaUPDqBBHJazi4v7Qda7jn28wVdTTTKZaWo3eiky4GPc/cPD2HDVd1gC0YNQ/4
         nuoKA7DP5btU9By8g6ywQknGSPOUGvK+tksG/7wlOU6iHyZfGxXeKVrxeSdTeyaiDUsS
         EZTA==
X-Gm-Message-State: ANoB5pkU7r9vD96pJeVjoLHwg1gnzLiA/FONbiSmHlP8N8Ldx+Y3HEP4
	heGMX/tlXscQ48TpXhU4fPYLPw==
X-Google-Smtp-Source: AA0mqf4PjjR5YuPxd2C/7IlPqSW9LZaOvKOAJv5OLtKXoi+ebxjd5U92/z0usQVACJUbXl0WNxlbLA==
X-Received: by 2002:ac8:4b58:0:b0:3a7:f3c4:dcd1 with SMTP id e24-20020ac84b58000000b003a7f3c4dcd1mr55927556qts.23.1671482251893;
        Mon, 19 Dec 2022 12:37:31 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id c3-20020ac80543000000b003a6a7a20575sm6580988qth.73.2022.12.19.12.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 12:37:31 -0800 (PST)
Message-ID: <07747babe7f83a496f9cd82849c6c2386550ac28.camel@ndufresne.ca>
Subject: Re: [PATCH v1 3/9] media: verisilicon: Save bit depth for AV1
 decoder
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 19 Dec 2022 15:37:30 -0500
In-Reply-To: <20221219155616.848690-4-benjamin.gaignard@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <20221219155616.848690-4-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_123733_266373_87EEE851 
X-CRM114-Status: GOOD (  17.22  )
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

TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTY6NTYgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gU3RvcmUgYml0IGRlcHRoIGluZm9ybWF0aW9uIGZyb20gQVYxIHNl
cXVlbmNlIGNvbnRyb2wuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIC4uLi9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgICB8IDI2ICsrKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IGluZGV4IDQ1MDBlMWZjMGYyYy4u
OGU5MzcxMGRjZmVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaGFudHJvX2Rydi5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fZHJ2LmMKPiBAQCAtMzI0LDYgKzMyNCwyNSBAQCBzdGF0aWMgaW50IGhhbnRy
b192cDlfc19jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpCj4gIAlyZXR1cm4gMDsKPiAgfQo+
ICAKPiArc3RhdGljIGludCBoYW50cm9fYXYxX3NfY3RybChzdHJ1Y3QgdjRsMl9jdHJsICpjdHJs
KQo+ICt7Cj4gKwlzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4Owo+ICsKPiArCWN0eCA9IGNvbnRhaW5l
cl9vZihjdHJsLT5oYW5kbGVyLAo+ICsJCQkgICBzdHJ1Y3QgaGFudHJvX2N0eCwgY3RybF9oYW5k
bGVyKTsKPiArCj4gKwlzd2l0Y2ggKGN0cmwtPmlkKSB7Cj4gKwljYXNlIFY0TDJfQ0lEX1NUQVRF
TEVTU19BVjFfU0VRVUVOQ0U6Cj4gKwkJY3R4LT5iaXRfZGVwdGggPSBjdHJsLT5wX25ldy5wX2F2
MV9zZXF1ZW5jZS0+Yml0X2RlcHRoOwoKVGhhdCBzZWVtcyBhIGxpdHRsZSBiZSB3ZWFrLCB3aGF0
IGhhcHBlbnMgaWYgeW91IGNoYW5nZSB0aGUgYml0X2RlcHRoIHdpdGggYQpub24tcmVxdWVzdCBz
X2N0cmwgd2hpbGUgaXRzIGRlY29kaW5nID8gVG8gYmUgdGhpcyBkZXNlcnZlIGEgbGl0dGxlIGJp
dCBvZgpwcm90ZWN0aW9uLCBhIHNvbWV0aGluZyB0aGF0IHZhbGlkYXRlIGFuZCBjb3B5IGl0IGF0
IHRoZSBzdGFydCBvZiB0aGUgZGVjb2RpbmcuCgpwLnMuIEkga25vdywgVlA5IHNlZW1zIHNpbWls
YXIsIHRob3VnaCBhcmd1YWJseSB0aGF0IHdhcyBjb3BpZWQgZnJvbSBqcGVnLCBmb3IKd2hpY2gg
aXQgc2VlbXMgdG90YWxseSBzYXZlIHRvIGNoYW5nZSB0aGUgcXVhbGl0eSBhdCBydW4tdGltZS4K
Cj4gKwkJYnJlYWs7Cj4gKwlkZWZhdWx0Ogo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+ICsK
PiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCB2NGwyX2N0
cmxfb3BzIGhhbnRyb19jdHJsX29wcyA9IHsKPiAgCS50cnlfY3RybCA9IGhhbnRyb190cnlfY3Ry
bCwKPiAgfTsKPiBAQCAtMzM2LDYgKzM1NSwxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJf
Y3RybF9vcHMgaGFudHJvX3ZwOV9jdHJsX29wcyA9IHsKPiAgCS5zX2N0cmwgPSBoYW50cm9fdnA5
X3NfY3RybCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX29wcyBo
YW50cm9fYXYxX2N0cmxfb3BzID0gewo+ICsJLnRyeV9jdHJsID0gaGFudHJvX3RyeV9jdHJsLAo+
ICsJLnNfY3RybCA9IGhhbnRyb19hdjFfc19jdHJsLAo+ICt9Owo+ICsKPiArCj4gICNkZWZpbmUg
SEFOVFJPX0pQRUdfQUNUSVZFX01BUktFUlMJKFY0TDJfSlBFR19BQ1RJVkVfTUFSS0VSX0FQUDAg
fCBcCj4gIAkJCQkJIFY0TDJfSlBFR19BQ1RJVkVfTUFSS0VSX0NPTSB8IFwKPiAgCQkJCQkgVjRM
Ml9KUEVHX0FDVElWRV9NQVJLRVJfRFFUIHwgXAo+IEBAIC01MTMsNiArNTM4LDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBoYW50cm9fY3RybCBjb250cm9sc1tdID0gewo+ICAJCS5jb2RlYyA9IEhB
TlRST19BVjFfREVDT0RFUiwKPiAgCQkuY2ZnID0gewo+ICAJCQkuaWQgPSBWNEwyX0NJRF9TVEFU
RUxFU1NfQVYxX1NFUVVFTkNFLAo+ICsJCQkub3BzID0gJmhhbnRyb19hdjFfY3RybF9vcHMsCj4g
IAkJfSwKPiAgCX0sIHsKPiAgCQkuY29kZWMgPSBIQU5UUk9fQVYxX0RFQ09ERVIsCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
