Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16718C282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KH8tx46dTeAvd7ZZJrTGdJg47HUvDRQ9riMRJ0PEV0w=; b=TmWMbQt+gQ6wsV
	G3M8s2hrWifw3QLxQfsoWcHu8ahNKGnQk3D4rd9dNAqpREo6LvPq6UlUX3irzFEKBPf73e9Ld1Kin
	KaWHA6boBZX6M+tUXXA4CApsaluC1ENU48wTVm5aotJ+iLC3l8LEW/ItHl5r8K5N+VfKtlRIxTEfH
	Dy8LgO/DQSOOdei+yWIuDichvv4j3XbPWPq2OiPihqCs7Rc0GSsh3A9e/w6FN/ekfNhAH4VQ893k9
	jlwYSnM/pxcZfp67dWNwtTvkU/g83fi/hYXP9vdvWONSrYEQNXXiS4xij0MSJUf13pR1wT1SiF4Wq
	ypaDbPfQnSZUZTju4QVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7Rx-0000000CfR1-3rUd;
	Fri, 28 Feb 2025 20:59:13 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to70T-0000000Cc9D-0iFn;
	Fri, 28 Feb 2025 20:30:50 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5e50de0b5easo303078a12.3;
        Fri, 28 Feb 2025 12:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740774647; x=1741379447; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kXgIwUFfcnXRTfKL18xxHQyr5xsRYovfLqKmpOqaIBU=;
        b=BJ5BIfwEWf3SbMERm1/gqKmZw8ObXZFUKCRhI5AnhWYwqE777uqcrGg80BR058gj+0
         VpgtENHSZy4wN1JR9Eoiez7skmTWI8gWaYpKwzuvrf9DXW5vJlb4dz+vYv19sbFV+BgH
         itg2mv83lac5VY5thXA44WepIsXUbGPaErQVjFz4PwcD08YToSRRA9KoYOov80iRfEe/
         1LozxJ6IgJPGbsjKjGr1pZOgsXUPiREBWlhFBBSswBzkpDliS4nnm4SkJpcMB2zwd/Un
         q1bmem328h/ltF8xW74wtcczFMQyznsTv+cz0JHXdkroB1394EKzmcgajhQXAIeByzMx
         NpjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740774647; x=1741379447;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kXgIwUFfcnXRTfKL18xxHQyr5xsRYovfLqKmpOqaIBU=;
        b=ltlmZ+7zA0A2jE4VRj/3yIh/JfyQh+yDKWvSpQwhcYJVEWrmw07IWlALToOnwv50P7
         mzCWKojtYtW85nrHbysuJOADcq5oBquqzoT6WgxSaPUcj937NPx2eA8Ioe0YnYLCSRGB
         Ow7UvF6NM9KFeGtgMuf9ptuOPiuUMTHllOtlvoAaD60lsZKHnW6tb/FB+BNf92UiFtnL
         fpQ/X2N1CQg+18yrBFOwWuZdequpB/K0Pvs1W3+4uSUen9986x5L4Nvj7eU72pc8GHaq
         syBM5sSe0UW17JnDs686pyZjaEB17ERG8i5DdDec6Rcl4tIU4yCeLTG+3DkSKEQCVkGm
         3l9g==
X-Forwarded-Encrypted: i=1; AJvYcCU9oIksQrPqyIKtZrZ05petkoTWJfmAmriT+2JRyOkH95c3Iw3+8KQf998+XvvHF8XclaOP8TVQj8G4PIc/KLSw@lists.infradead.org, AJvYcCWj2yTlcndIrAqZSWkDckJ4Z+7Zn6XZbmJLFrKLaFQZGNy3Z1FkO/4AWXQ7HHmyvr11WLI9hgtjlFwAp9vpzx0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvdia66xUfb6U+SbalN/Wtb1VM2JOBaVIghuHhEl33XZa5Jp7S
	TiBfVS3IFpzQkvhu8bqSngJijqMyeRW/VWuKOTWcvKLr3JSjnRp6
X-Gm-Gg: ASbGncsT65iAjDaTusgrCjWkkcNxyDruuPDIaEBf/E1rjhmmLq5pt6WZo3/u+mmMj7N
	Jv5pp14c6lqrIwnDbowNZp/XlJxIjiedzhPlarwOa1zof2yPL4pv9imqFQYTlT0nLlMXMxH5z9e
	A2L5rXqyBQTaSnj14m8UWIyQEOMksGH+sAIamWD9gahpapwe41WEjlH3h9ukvalgwxJLbUOdpF8
	jH87n0kowgr1bKwq/D3MFi+C810AcONoVOIJxmpcYBZtzXDbJxCUzjd+SHMTYDlxZ7+VRTFEdYy
	AbdAcDFN64gSsqu65ekJbF5S+iOw8iTHYZ3eLxhub9szmAuq4tlnzbLpj19W+akE4o7ZBrG+vHy
	z6HXfAdE=
X-Google-Smtp-Source: AGHT+IG2W1DgzC5HFOlMxfquiHOJsjopf4V1IKQfO3ADcRZT8QfnlN9j9L7rrPBIsVSyavnVTfhblA==
X-Received: by 2002:a17:907:9716:b0:abe:e1b3:78d with SMTP id a640c23a62f3a-abf261fba01mr544156566b.8.1740774646893;
        Fri, 28 Feb 2025 12:30:46 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf508f2288sm890766b.2.2025.02.28.12.30.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Feb 2025 12:30:46 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250223113036.74252-1-andyshrk@163.com>
Date: Fri, 28 Feb 2025 21:30:33 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <AC3DE87B-64B1-4C34-8E1B-3900E2C53AA3@gmail.com>
References: <20250223113036.74252-1-andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_123049_207889_DCC9C64C 
X-CRM114-Status: GOOD (  13.74  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgMjMgbHV0IDIwMjUsIG8gZ29kei4gMTI6MzA6Cj4gCj4gRnJvbTogQW5keSBZYW4g
PGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IAo+IAo+IFRoZXJlIGFyZSB0d28gRFcgRFBUWCBi
YXNlZCBEaXNwbGF5UG9ydCBDb250cm9sbGVyIG9uIHJrMzU4OCB3aGljaAo+IGFyZSBjb21wbGlh
bnQgd2l0aCB0aGUgRGlzcGxheVBvcnQgU3BlY2lmaWNhdGlvbiBWZXJzaW9uIDEuNCB3aXRoCj4g
dGhlIGZvbGxvd2luZyBmZWF0dXJlczoKPiAKPiAqIERpc3BsYXlQb3J0IDEuNGEKPiAqIE1haW4g
TGluazogMS8yLzQgbGFuZXMKPiAqIE1haW4gTGluayBTdXBwb3J0IDEuNjJHYnBzLCAyLjdHYnBz
LCA1LjRHYnBzIGFuZCA4LjFHYnBzCj4gKiBBVVggY2hhbm5lbCAxTWJwcwo+ICogU2luZ2xlIFN0
cmVhbSBUcmFuc3BvcnQoU1NUKQo+ICogTXVsdGlzdHJlYW0gVHJhbnNwb3J0IChNU1QpCj4gKu+B
rlR5cGUtQyBzdXBwb3J0IChhbHRlcm5hdGUgbW9kZSkKPiAqIEhEQ1AgMi4yLCBIRENQIDEuMwo+
ICogU3VwcG9ydHMgdXAgdG8gOC8xMCBiaXRzIHBlciBjb2xvciBjb21wb25lbnQKPiAqIFN1cHBv
cnRzIFJCRywgWUNiQ3I0OjQ6NCwgWUNiQ3I0OjI6MiwgWUNiQ3I0OjI6MAo+ICogUGl4ZWwgY2xv
Y2sgdXAgdG8gNTk0TUh6Cj4gKiBJMlMsIFNQRElGIGF1ZGlvIGludGVyZmFjZQo+IAo+IFRoZSBj
dXJyZW50IHZlcnNpb24gb2YgdGhpcyBwYXRjaCBzZXJpZXMgb25seSBzdXBwb3J0cyBiYXNpYyBk
aXNwbGF5IG91dHB1dHMuCj4gSSBjb25kdWN0ZWQgdGVzdHMgaW4gMTA4MHAgYW5kIDRLQDYwIFlD
YkNyNDoyOjAgbW9kZXM7IHRoZSBBTFQvVHlwZS1DIG1vZGUKPiBoYXNuJ3QgYmVlbiB0ZXN0ZWQg
eWV0LCBidXQgSSBzdXNwZWN0IGl0IHdpbGwgbGlrZWx5IHdvcmsuIEhEQ1AgYW5kIGF1ZGlvCj4g
ZmVhdHVyZXMgcmVtYWluIHVuaW1wbGVtZW50ZWQuIEZvciBSSzM1ODgsIGl0J3Mgb25seSBzdXBw
b3J0IFNTVCwgd2hpbGUgaW4KPiB0aGUgdXBjb21pbmcgUkszNTc2LCBpdCBjYW4gc3VwcG9ydCBN
U1Qgb3V0cHV0Lgo+IAoKQW5keSwKCklzIHRpcyBzZXJpZXMgZW5vdWdoIHRvIGdldCB1c2JjMS9k
cDEgd29ya2luZyBhcyB2aWRlbyBvdXRwdXQgPwooYXNzdW1pbmcgaSB3aWxsIGFkZCBuZWNlc3Nh
cnkgY29kZSBpbiBkdCkgCgpyb2NrNS1pdHggaGFzIHNlY29uZCBoZG1pIHBvcnQgdXNpbmcgdXNi
YzEvZHAxIGxhbmVzIDIsMyB0byByYTYyMCBkcC0+aGRtaSBjb252ZXJ0ZXIKCmlzIGl0IHdvcnRo
IHRvIHBsYXkgd2l0aCB0aGlzIG9yIGl0IGlzIHRvbyBlYXJseT8KIAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
