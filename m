Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026F5F30955
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 12:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h43/p/8vOAC7Hc542gTKUZviFP5mrD2wbW5P0gr3Knw=; b=V4jomHjVN9jcvN
	rdAjvUEjeM2+soupBg+PKhJXXnlucUX+loDjV4a4Rj9W4LtxtmPnBdGP6+cuc0ZmfyXOnKlpXoMZc
	sZJh8bIHUuH9Q0iYlgPnAhH4fuonSprrIq20B2xqH1P7F8wVAYN1m07BVem0xw6YzRnV+C1SBh4Ap
	VchRl2NYb51uuqfRX7DTNiNEdLYEZvJLqwdhFl+RYUwN8LVrdU22/Lnw5V7CkbllJmjl477CjKxUj
	jJqzKwF5hr7NRHN8vkuQP9j1s2vasxD4wAHvU33LYKLuB5kBCfLpvqE4Dbb3ls5ZXFET9/N8BQpOu
	GEwR2tvGZd1oui20n9lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7q6-00000001lnE-2tGJ;
	Thu, 05 Mar 2026 12:30:02 +0000
Received: from mail-pl1-f178.google.com ([209.85.214.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7q4-00000001llb-0Wxt
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 12:30:01 +0000
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2adff872068so38987745ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 04:29:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772713799; x=1773318599;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QrCqdrr01xMGx/SCx6YPhCapPZnumyW3whTx771nk9I=;
        b=OUR/+KxkpokUb84HQPmsVOSw40thKumzrqO/kuv6wfuRzHZO/UBrARVHSdesLufJr9
         8+1rcNCKJ4ecyPTmV0790l1nNSr9Hr2aVaYsDxyF9PrSPlCeqLxcij94jTE0EKGxFUzg
         kk32aa40XlM10V/YOe3m3VtDmEmtRYrzDcB19v49JGysDMxXB+ohoXSt1uD/Z9L4yoWI
         Ck9HjhLcjZBa3eS57SrUMclSoMy+uv9r+GOmokJScmk5gRWgjmZ/+HElJJKPedlV900h
         XURod2H2yUxJN8YO4dbQkUDAgyKbOFrFovA9oY6gQGYhpi7nunYSrVx/Dqy48u0tE9Rs
         De9g==
X-Forwarded-Encrypted: i=1; AJvYcCXn0MFUzZmlMvBA3C6gURjbL9U1DsQycF8BMBIjSVsvoyZ9WXfLL7FTU82Lpp4UouD5LouHp6PwfRrva+J0Ww==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXvyPx7wk8DqhSCLm8WI6QOfTUyd/3mFD43XNxX8Ibs5Rm6tzx
	AaQUveYJ75Df2OdOxDAcd7iiFOnzYsytc9BPTRpVwlZsASE9nEgr4H7d
X-Gm-Gg: ATEYQzxxAMu6VSNY2GUFlb9x4hG/jQgV18U4gWOrwkEevCYogpL15Q7uRw6zwmEWmcm
	FXy3BNcGEojA5XVf48MXoVX9yVS+cL4vLuydhUMhPlT/419PtRbtvzz+Uf4zuqQPd9ykY8tERMX
	FGxOzNZ8M9X7ZNfRfi73AeyE9CD0b6E75gsaVGi5EKVq+HB1r1sTcoENYc8iPGpbZZaBcS4JlTy
	EwHBfHqBqXEvvPRQZ+JNd28+nXxfoZJGB7yCA2QmMy1u6ugya7B/0U7ibYByChoHWCYq8R+tqIN
	h5c0ZPcS6yEJ7svP3Y6K9je5YlHbSqADcq0qogKphHRbiVfcwmJO+JHL2D0N5fTznvCRnC82ewS
	EaguZVOzhGK0+v8i5pKCjp9V1URhgEK1I7DRSzmbd7kKFWEqWxHqIsRAObBQUoZEn9tND9ZXGcD
	kfroKl+bHuIMbKdBrXbZnniViMI/f5EriZSDp1KftB+sa2bXzLZ9RA+h0wjjja2D/hqexjotDXZ
	ayTvt2LxAfIyqmhX9nLbFg1mE55LmebMYhF7L6v2U1W4pjeqNU=
X-Received: by 2002:a17:903:1a43:b0:2ae:4701:3c31 with SMTP id d9443c01a7336-2ae6a9cc1c0mr59976385ad.11.1772713799017;
        Thu, 05 Mar 2026 04:29:59 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69fa43sm225561035ad.46.2026.03.05.04.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 04:29:58 -0800 (PST)
Date: Thu, 5 Mar 2026 21:29:57 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Joe Perches <joe@perches.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	netdev@vger.kernel.org, spacemit@lists.linux.dev,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
Message-ID: <20260305122957.GA1652563@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
 <20260305121532.GA1649635@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305121532.GA1649635@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_043000_201521_6D84538D 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
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

T24gMjYtMDMtMDUgMjE6MTU6MzIsIEtyenlzenRvZiBXaWxjennFhHNraSB3cm90ZToKPiBIZWxs
bywKPiAKPiA+IEs6CVxiKD86X18pPyg/OmRldm1fKT8oPzpvZl8pP3BoeV8oPzpjcmVhdGV8ZGVz
dHJveXxwcm92aWRlcl8oPzp1bik/cmVnaXN0ZXIpXGIKPiA+IEs6CVxicGh5Xyg/OmNyZWF0ZXxy
ZW1vdmUpX2xvb2t1cFxiCj4gPiBLOglcYnBoeV8oPzpnZXR8c2V0KT9fZHJ2ZGF0YVxiCj4gPiBL
OglcYig/OmRldm1fKT8oPzpvZl8pP3BoeV8oPzpvcHRpb25hbF8pPyg/OmdldHxwdXQpKD86X2J5
X2luZGV4KT9cYgo+ID4gSzoJXGJwaHlfcG1fcnVudGltZV8oPzpnZXR8cHV0KSg/Ol9zeW5jKT9c
Ygo+ID4gSzoJXGJwaHlfKD86aW5pdHxleGl0fHBvd2VyXyg/Om9ufG9mZikpXGIKPiA+IEs6CVxi
cGh5X3woPzpnZXR8c2V0KV8oPzptb2RlKD86X2V4dCk/fG1lZGlhfHNwZWVkfGJ1c193aWR0aHxt
YXhfbGlua19yYXRlKVxiCj4gPiBLOglcYnBoeV8oPzpyZXNldHxjb25maWd1cmV8dmFsaWRhdGV8
Y2FsaWJyYXRlKVxiCj4gPiBLOglcYnBoeV9ub3RpZnlfKD86Y29ubmVjdHxkaXNjb25uZWN0fHN0
YXRlKVxiCj4gPiBLOgkoPzpzdHJ1Y3RccyspP3BoeSg/Ol9vcHN8X2F0dHJzfF9sb29rdXB8X3By
b3ZpZGVyKT9cYgo+ID4gSzoJKD86bGludXgvcGh5L3BoeVwuaHxwaHktcHJvcHNcLmh8cGh5LXBy
b3ZpZGVyXC5oKQo+IAo+IFdoYXQgYWJvdXQKPiAKPiAgIEY6CWRyaXZlcnMvKi8qcGh5Kgo+IAo+
IG9yIHNvbWV0aGluZyBhbG9uZyB0aGVzZSBsaW5lcy4KCkZvciBjb250ZW50IG1hdGNoLCBpdCBj
b3VsZCBhbHNvIGJlOgoKICBLOglwaHkKCkkgYmVsaWV2ZSB0aGlzIHdvdWxkIG1hdGNoIGV2ZXJ5
dGhpbmcgb2YgaW50ZXJlc3Q/ICBQZXJoYXBzIHRoZXJlIGlzIG5vCm5lZWQgdG8gaGF2ZSBhbnkg
b2YgdGhlc2UgY29tcGxleCByZWd1bGFyIGV4cHJlc3Npb25zLCB3b3VsZCBiZSBteSB3YXkgb2YK
dGhpbmtpbmcgaGVyZS4gIE1ha2VzIGl0IGVhc2llciB0byBtYWludGFpbiwgdG9vLgoKSnVzdCB0
aGlua2luZyBvdXQgbG91ZCwgcmVhbGx5Li4uCgoJS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
