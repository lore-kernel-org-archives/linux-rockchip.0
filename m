Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05DF3FED9EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 16:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loA16458Vl2z/2t8CNoXyYhl79IJez6YhMeTCGUL8lc=; b=uArYArgxEia5m9
	jxoVXPpuNrtsCsUGT/k6DgKwFHgkAzo+XodDo/vKYQ0E6qvukhmklxl0UzTOEu3VFMfmo0rXR0xHN
	RNUcVT66oVB1xko7MDGexaOxx3Pr0wfgwdWJYvHEqgSO8c4psMOvIsIxBx7AQMNFdZomAOc2uWeNC
	YaliMsD+k1YW3ixcGrtpRX3Kzgy7u7Cwe6Jt939sYkDfVEVmyxcwAs51QpFfxv6vEX7AWaXhW+5fJ
	X4UjgCGUTynuvw9NXlWql0kLBupnXPgkiA2tgHMSVlXB0JI1tkwb2eSiniBMmQWPBIqx1Ht1VBURe
	26cDGqcAgVt6KVed+sRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2XcF-00000006rWg-3aUB;
	Tue, 17 Mar 2026 16:49:59 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2XcD-00000006rWD-1s8Q
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 16:49:58 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so70932205e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 09:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773766195; x=1774370995; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgpjcbDB7G8Ltp9MmQbZQKZFro2nhljF0SDvfM2S37g=;
        b=UhxwUrE/xmDAZvO5AeQdqOrhkaPuDe1P8767XCMTrc/sG/UtzXsXn8lKGfRW7V+ZOh
         VmBCW0uiftvX3HY7oo8P4OjtTIwZk9nMarwfWjZBXEppejax2M3Q+tE+g2KjXVwyjCi3
         G0b/UBXLAh/XMqXDJijE6lO5Z19s9opIjYYweHz7xZhvNrQHn1DKdyUT0iTaw9zRLwb7
         LRtd4jyiCZwnAG6lHrrc5tNO7ZlRh36NUhbBmHoL3FHo+X5CKCAw3VRhqrsqhqqEYtkE
         Q8+POS565LQXrRCGFhvx0DMywg3AhpyOWbxRIKeuviF7ACZ2jOq7P61lWiCegSLfvLB3
         XlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773766195; x=1774370995;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lgpjcbDB7G8Ltp9MmQbZQKZFro2nhljF0SDvfM2S37g=;
        b=fJU6oHCvy52rutx/8zafT0JtkddYM7ehP7SGk3GiQyxWnEV2u8MjLlOZIaB4goqy0Y
         f1+USeWCE1/oMCzni2WJwcZ1DuTTYcgwK6NDJSIrmzPWkWGlaNz3u9otgaltsSV9ttpb
         2wzXH6jjraZDEND2V4Q8e4ouTOIb0wlkpMWG3PW0uy/ZHA+35ry/DdG4Bfhnvvw1V5FW
         b8YzWEsVIjHZvkidW8dsTymf47UOUq94edtr1gOZgwAdl97/yN4/vLxybIBlDfdSqbya
         m33VSGP8RuXh8h1eSPZH2HXhcHZ+LlOKe15nwdfjBaeC5kvh8u3WATxG3YqCSFASQdDC
         7BKw==
X-Forwarded-Encrypted: i=1; AJvYcCXe/CiNzCCdMus5Rljdc8CHgvReP2zkeMdNRrKUFYyfeRS02iSlVRAbR74g5S9eQf1x0AmUVMMrtfy1vNKRVg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDU4uCIkjD8AkUcNK0bYSpop7c8Qj+hHsox1IfiHYRSyvv3oe4
	JX6NDTD2cYbs3g7pvN8JQJHw/z+Q2wUwgFE7N5gHHlTMNhkWdfXnQ/yd
X-Gm-Gg: ATEYQzwaZqf0HDiIB3UZ0T/56HDozJRTn8t6qizt0gjeZsLTz5AKohH6GXVVsl/E3uQ
	9+LfxL4z9+Y5rc+aODyBEiDIYyLfm29YdU7OxY7eGHSNhkjl3Uq8OvyCykxYuSC+RKPfCZ5Tk3z
	11sdkzaReVaoRIrdmox0vSYPDaNVSACMUNLG8jJZ8KVooHGAgnneKOstr2OQyXw6aV0Lrm6/7wd
	/4pCnIEcat8hvnZc3ZppkkEfth79Yz7HAJwLkvv4t+M1V4M1h6dqzo3zgb0dDKdsII4SXxue6oP
	TpHUSj7jJkCjVdyP8IxUqzU6V+tPy9B4T43XZtTT6exsocsOSfz/0oWJqPBIHmcmV4q8b48E7eP
	ZbXi23Xlh3HFhmyagGAFd3CRBW2SXAQpNiDdJtfrtTJx+7B4F9e8n1XBFEsm/POf2Yfed9aKFOM
	2OLNgv/oVXIcPlmcJslZyUQLv8G+WrLylDnLG181CfXmH8d2G/DcUUwB99J8C6OLWqN9ti5yPfs
	Dl1QbTY503K79yU1ppMI8R+fLs=
X-Received: by 2002:a05:600c:4585:b0:483:709e:f238 with SMTP id 5b1f17b1804b1-486f4479926mr3449905e9.29.1773766194877;
        Tue, 17 Mar 2026 09:49:54 -0700 (PDT)
Received: from smtpclient.apple (static.253.36.98.91.clients.your-server.de. [91.98.36.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4623a26sm312025e9.7.2026.03.17.09.49.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2026 09:49:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Subject: Re: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio output
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <DH56X74P9GC9.1O123S92J60RG@bootlin.com>
Date: Tue, 17 Mar 2026 20:49:38 +0400
Message-Id: <00EE3E21-F614-429B-ACB6-19AF64CF74B3@gmail.com>
References: <20260228112822.4056354-1-christianshewitt@gmail.com>
 <DH56X74P9GC9.1O123S92J60RG@bootlin.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: Apple Mail (2.3864.400.21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_094957_502621_B5755222 
X-CRM114-Status: GOOD (  14.83  )
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
Cc: Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Detlev Casanova <detlev.casanova@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Douglas Anderson <dianders@chromium.org>, Sugar Zhang <sugar.zhang@rock-chips.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PiBPbiAxNyBNYXIgMjAyNiwgYXQgODoxNuKAr3BtLCBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVz
b2xpQGJvb3RsaW4uY29tPiB3cm90ZToKPiAKPiBIZWxsbyBDaHJpc3RpYW4sCj4gCj4gT24gU2F0
IEZlYiAyOCwgMjAyNiBhdCAxMjoyOCBQTSBDRVQsIENocmlzdGlhbiBIZXdpdHQgd3JvdGU6Cj4+
IEZyb206IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPj4gCj4+IENoYW5uZWwgQWxs
b2NhdGlvbiAoUEI0KSBhbmQgTGV2ZWwgU2hpZnQgSW5mb3JtYXRpb24gKFBCNSkgYXJlCj4+IGNv
bmZpZ3VyZWQgd2l0aCB2YWx1ZXMgZnJvbSBQQjEgYW5kIFBCMiBkdWUgdG8gdGhlIHdyb25nIG9m
ZnNldAo+PiBiZWluZyB1c2VkLiBUaGlzIHJlc3VsdHMgaW4gbWlzc2luZyBhdWRpbyBjaGFubmVs
cyBvciBpbmNvcnJlY3QKPj4gc3BlYWtlciBwbGFjZW1lbnQgd2hlbiBwbGF5aW5nIG11bHRpLWNo
YW5uZWwgYXVkaW8uCj4+IAo+PiBVc2UgdGhlIGNvcnJlY3Qgb2Zmc2V0IHRvIGZpeCBtdWx0aS1j
aGFubmVsIGF1ZGlvIG91dHB1dC4KPj4gCj4+IEZpeGVzOiBmZDAxNDFkMWE4YTIgKCJkcm0vYnJp
ZGdlOiBzeW5vcHN5czogQWRkIGF1ZGlvIHN1cHBvcnQgZm9yIGR3LWhkbWktcXAiKQo+PiBSZXBv
cnRlZC1ieTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+Cj4+
IFJldmlld2VkLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xs
YWJvcmEuY29tPgo+IAo+IFdoaWxlIGFwcGx5aW5nIHRoaXMgcGF0Y2ggdG8gZHJtLW1pY3MtZml4
ZXMsIGNoZWNrcGF0Y2ggY29tcGxhaW5zOgo+IAo+ICAtOjE0OiBXQVJOSU5HOkJBRF9SRVBPUlRF
RF9CWV9MSU5LOiBSZXBvcnRlZC1ieTogc2hvdWxkIGJlIGltbWVkaWF0ZWx5IGZvbGxvd2VkIGJ5
IENsb3Nlczogd2l0aCBhIFVSTCB0byB0aGUgcmVwb3J0Cj4gCj4gWW91IGNhbiBzZW5kIHYzIHdp
dGggdGhlIGxpbmssIG9yIGp1c3QgcmVwbHkgd2l0aCB0aGUgbGluayBhbmQgSSdsbCB0YWtlCj4g
Y2FyZSBvZiBhZGRpbmcgaXQgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLgoKQXBvbG9naWVzLCBpdCBs
b29rcyBsaWtlIHVzZSBvZiBSZXBvcnRlZC1ieSB3YXMgdGlnaHRlbmVkIHNpbmNlIEkgbGFzdAp1
c2VkIGl0LCBhbmQgdGhlcmXigJlzIG5vIG9mZmljaWFsIHJlcG9ydCBhbnl3aGVyZSBJIGNhbiBs
aW5rIHRvIChpdCB3YXMKYWxsIGRvbmUgaW4gcHJpdmF0ZSBjaGFubmVscykgc28gYmV0dGVyIHRv
IGp1c3QgZHJvcCBpdCBmcm9tIHRoZSB2MiBwYXRjaAppZiB0aGF04oCZcyBwb3NzaWJsZT8gLSBp
ZiBub3QgSSBjYW4gc2VuZCBhIHYzIHdpdGhvdXQgaXQuCgpDaHJpc3RpYW4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
