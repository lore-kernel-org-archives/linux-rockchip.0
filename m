Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC47C982DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 11:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0Cl91KQxpfVj8q44Ynm5yYF+knyIYYLFCeNafh27S4=; b=3yHrCZaG7wwtdB
	xS5qQF548uPITbC2J/cbmsuBe83b97Uvh3d87V7t/3N5v6qwagPTG4Q6yggUrkrsNCcjQjgMIFup0
	yTS8ldfNTUjkOpTOw8mA/umxVS/SyNvoc9pUoRaDzPvFd4ZZSxcvk6YwiQGkoeWtmIlhnzG1hLecM
	aQfvWwbCrYge2cjhMR5N/m381k87bg/zL5X2zZ2aNfG6uaI3wPQCPFmcrE7ni7cmQVQTSQUbO/g/G
	GIii3rc8AWO9WpsUJsKI7+rZ4wxGq9CCiRDuW99HWIoJfFDlFury39I6HSz7SHi9Ou2vPPhwxta9p
	VKfS1GpXeDAWqo0hGZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7WiN-0000000EDHB-0ABV;
	Fri, 18 Sep 2026 11:25:11 +0000
Received: from mail-qv2-x10.google.com ([2607:f8b0:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7WiJ-0000000EDG4-2URj
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 11:25:09 +0000
Received: by mail-qv2-x10.google.com with SMTP id 6a1803df08f44-90cdfc9b6ebso5850516d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2026 04:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789730703; cv=none;
        d=google.com; s=arc-20260327;
        b=NW43cGDhkKDg3jgqSyUx+e2OV8VizD7e5k1rJs+RRg73nixknIrjSWo3rsYKxykeFS
         VTw14xcEggwWfZN5wMRglrGDSSDfM74eRTwqWvdAxesg7R00AqqSC3gqJfo7OeRO/Glj
         3/CWJkZPjDlYN3mKoMV+tXZq0nBx/XyhIIMgQFN+At55jK3trVCDiXq99JYnIjjX+V3v
         NGKwXPRmzfQj+fZjPo5GQHynxWFKAifnENfZ2LG2tcHWQz9eZpVYaT8Fkp1JpWRYYnfR
         otuimBoN7lxlIZnpUokYhXG1RpuGBVu4+La134dh6nwj/yYO7cJD0zQul5ehJNB9kt/L
         AboA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fxNae09A1OnN2DhU/tJerCjit10PKrqeq902N6O9xkU=;
        fh=gcxg8+/4VFyypaeN429ewdXQs1MWi7QYsyFSAaUUoeE=;
        b=fqKZpghsXFiOaQmIQCws6zuL57hkEv65t7A+0fjwl0F2ZN5jCWhxBir6w25ig07tLv
         9hL+U5OOQAIZLctWY/MGn+lUaLkmTgLa0cissPHhVtBarTjw9aRyibjR+FrN4ioa/AFE
         1JDoWOJlEoyaBopRI7p0FySpO0OfoWgA9QDhb8hQ8ye1Lw3SynuVzQJVtmp8SCaNBKNh
         dUFmY8+P0ih+xi8pmVsOcyq9/DvXeq7py+QvhbRnFTMfNgvNoE7r91tc7Tx/+/RNjmSQ
         8fySUkN8U2WMYGInA8Rn9g54Yliav7Z74byudVzHOiaSdlACRZgSukyC/2scxsCmcwCZ
         zYDA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20251104.gappssmtp.com; s=20251104; t=1789730703; x=1790335503; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fxNae09A1OnN2DhU/tJerCjit10PKrqeq902N6O9xkU=;
        b=yNz1/ttiS5hqCViXiIzWRBXgU5uc6eF8xw7zIk1LBa0gQEe/dB6DqwIfuxfLfITlBG
         vbImdI2wLwkPN9TJFhkXJyuBhFxGm3Xd6NufitGnveKaUK0HK3qvivD4DCcHAPKFOxdq
         Wft36lE7KjMhNU+iifsdxL1PKzmNG+lok9tMzEeRLVM7xR39HvRnzQdJP0kWWHhQzN0C
         kwkY2obSrk17Ysp/aLXcpcaxEdiInXCYtorrg4d9RbqvnJC7jh8Mha11G8XgoBaZ3geK
         dBFADnk/h4cZWmcaOlJE+50tC+9tMJgnAr1zgSN9bZc6AGEn/zu3GbCz9QWXNQTaO8Am
         nE2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789730703; x=1790335503;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fxNae09A1OnN2DhU/tJerCjit10PKrqeq902N6O9xkU=;
        b=l0w8Gx3Q7fe8qW3R34ps6Ztp9KWopSF8f0q5gfL8pP/nhs/wnrSKuw2Pp3Rnc7Fuq2
         CEoMiJGCWUlNuYgbic5H0ATNQIJ6VtSrdmi6eYHEdazj2nFAPja4AJvFHNicUStHyRtm
         xNknZDMXexgF6k+cGXm20yuAUVlrlONwBv6S1Navia1lyqv4iny6NtuAxir+nrxAJdcU
         rp80pHKpx79ggXSBhawYu+3TO36i4tSOJuI0pJiS5dsBWSyQTrRKplMWz/UWJtyKBN9+
         p+YOkSAdlACQGipqIgGlClPBSLd7cfdBzJqYcOQNSt44sVblCqRBCbkhgdJSRtGYP8Rj
         PQiQ==
X-Forwarded-Encrypted: i=1; AKwUvBz2XBKJlyCULv+cUC4aC0cxtP36Hn5NnYrIxJGWQHHRlJegcOKeXEKbSkMHJup5d+g0Qu2Ef4UAlbxHYWjh1w==@lists.infradead.org
X-Gm-Message-State: AFuF++lXnlpYsWCvJiWVa2QRCuUShlSbrjx/RD0Gae6K5qfZ2wIhav0s
	Q3gece6UsRL2gSseaQk1BreNzaCM64vhqpRqLST4GuIM1GhgdDLoz+Bh7dmO/9bulCzfkrfR374
	J3cV7AMwiG36tkCeUMq3BH+2F0HM8ju6ow4kTKnOHbA==
X-Gm-Gg: AYBFou2tkLMWTsBc9FdIJc2nAPk4ZXiEMbOnESZvQLxMB0DIJYYxRqYaotyz4ohJ080
	u/+oWCa1FfO3ydMJUSIRCy8FIfQrmvSDtC2nOjvZM6aN4WM4ygknV3lH9wheX/4HPdA1iOqYkFG
	Uo0aB3f/z2V6AA+K97P7qZny8c1h5rfmjf/Ot2NatMcGp8cV4uvUNAhQdVNdvQA7Thizg3T0Gsj
	5BSdjZvGJ8ZriPSgcXAAJdzc+aENj2pNcoLeCZ2CZxy2qYP+Gk6C+9jRoBsazo3ymD+e/I1xoWK
	/lfMseVRzTLlyuBBQqUro6E6ePj0qlpI1Qg6o/rb9tu8h2gkGFvrYckkeIBFy8mTww==
X-Received: by 2002:a05:620a:6288:b0:93a:14c:3296 with SMTP id
 af79cd13be357-93bdc64eb85mr265730785a.15.1789730703288; Fri, 18 Sep 2026
 04:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260904130858.27803-1-royalnet026@gmail.com> <20260918100543.23974-1-royalnet026@gmail.com>
In-Reply-To: <20260918100543.23974-1-royalnet026@gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Fri, 18 Sep 2026 13:24:51 +0200
X-Gm-Features: AcwNN1UuXA_zYpic264Z4jBxnVkM0kgrR6zKknS_YOh0Jo6_SD-EuICl1_jx1Us
Message-ID: <CAPsqS2QXQda2ftbEJb_-Qeva9ay4+4ysdpUtj8jAvbyAsYiAJw@mail.gmail.com>
Subject: Re: [PATCH 0/7] accel/rocket: DVFS for the RK3588 NPU
To: Igor Paunovic <royalnet026@gmail.com>
Cc: Oded Gabbay <ogabbay@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sidong Yang <sidong.yang@furiosa.ai>, Diederik de Haas <diederik@cknow-tech.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jiaxing Hu <gahing@gahingwoo.com>, 
	Nicolas Dufresne <nicolas@ndufresne.ca>, Jonas Karlman <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_042507_839560_C9A1C8DE 
X-CRM114-Status: GOOD (  12.43  )
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

T24gRnJpLCBTZXAgMTgsIDIwMjYgYXQgMTI6MDbigK9QTSBJZ29yIFBhdW5vdmljIDxyb3lhbG5l
dDAyNkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgVG9tZXUsCj4KPiBBIGdlbnRsZSBwaW5nIG9u
IHRoaXMgc2VyaWVzLCB0d28gd2Vla3Mgb24uCj4KPiBDb25vciBhY2tlZCAyLzcsIGFuZCBOaWNv
bGFzJ3MgcmV2aWV3IG9mIDMvNyBtZWFucyBhIHYyIGlzIGR1ZS4KPiBTYXNoaWtvIGNvdWxkIG5v
dCBhcHBseSB0aGUgc2VyaWVzLCBmb3IgdGhlIHJlYXNvbiB5b3UgZ2F2ZSBKaWF4aW5nCj4gb24g
MzEgQXVndXN0OiBpdHMgcHJlcmVxdWlzaXRlLCB0aGUgc2xvdC1zZWFyY2ggZml4IChsaW5rIGJl
bG93KSwKPiBpcyBub3QgcGFydCBvZiBpdC4gV2l0aCB0aGF0IGZpeCBmaXJzdCwgdGhlIHNlcmll
cyBzdGlsbCBhcHBsaWVzIHRvCj4gdG9kYXkncyBkcm0tbWlzYy1uZXh0IHdpdGhvdXQgY29uZmxp
Y3RzIChnaXQgYW0gb25seSwgbm8gYnVpbGQpLgo+Cj4gSSBjYW4gc2VuZCB2MiB3aXRoIHRoZSBm
aXggYnVuZGxlZCBpbiwgc28gU2FzaGlrbyBjYW4gcmV2aWV3IGl0LAo+IG9yIHdhaXQgZm9yIHlv
dXIgY29tbWVudHMgZmlyc3QsIHdoaWNoZXZlciB5b3UgcHJlZmVyLgoKSGkgSWdvciwKClBsZWFz
ZSByZXNlbmQgd2l0aCB0aGUgZml4IGJ1bmRsZWQgaW4gc28geW91IGdldCBhIFNhc2hpa28gcmV2
aWV3LgoKVGhhbmtzLAoKVG9tZXUKCj4gQW4gTExNIGhlbHBlZCBtZSBkcmFmdCB0aGlzIG1haWwu
Cj4KPiBUaGFua3MsCj4gSWdvcgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDkw
NDEyNTkzNi4yNjIzNC0xLXJveWFsbmV0MDI2QGdtYWlsLmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
