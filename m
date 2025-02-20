Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73736C021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 11:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnPhqHk8KclneW/n2Z9E6TlYE/K75/bDKqJGHnRckw8=; b=MWu2zvthF11QA7
	XyhkABVUOim0sEHo6PA3mvRsvXFY+fFmwfPA2O8BEc1mnkj+vfoAsFEDoic2C11ZAYN+URAmYuhJm
	ohWejpKyZNOkF6eAEf878kJUdcMMIOVwTRRGW+G3bDfHtaJYZXPHkg/xL6AM7TnRuaXdCymjgwk3/
	kalMp3VJrRLSlfzghxvc2RPXRUAFkiAAB52FlW1y0CTk8K2vVWED9zNWORACa8/v7ocU02LlRo/bw
	8TKe3peyqhno8J6G/3Kqqbe9x+HxbJIoeYoeWpbwJ1zvlIhSd7FakdGKmi8QfUDDGYn2++VFDg4kW
	HifkZQltWzmhaOXT16RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl4Yn-00000000UzB-1ruH;
	Thu, 20 Feb 2025 11:17:41 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl4Xn-00000000UgI-0Hjg;
	Thu, 20 Feb 2025 11:16:40 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5e0452f859cso1216180a12.2;
        Thu, 20 Feb 2025 03:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740050197; x=1740654997; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u33bNsVrNxNtTUoEnhMd7zgtXI5olli4RASjpX/hNKk=;
        b=HA//ssvh4KvMJjfnNcsh09kBKPM82bWmRXddCzIlaFd6dQkewnBeXalrScay1aXTIP
         tpAynSfWOJRmVbKRcv0BmMJl8c5EzcDYivtG+i+N92u71ghjClvYhhEo3m7KAV9Rv0Tf
         6mZy4sBxKaKmCyF0CPPTCfOSqOWjmK5vlYFcJkp8zb1v422iAVmgeB4xSAUxwcxWoZki
         tGX6x4gVBQYaVWCXjMfuXUDZpyXZcj0DtzUQLYX/ffuHsaNlAlo98yrxpyffj97UCRWF
         AJ2vvSz9asaa7+abFntDUy1YOdfw6R3fVH6bOqzdQr02So3YO90O3XVAqj0C6Fd9skr9
         rFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050197; x=1740654997;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u33bNsVrNxNtTUoEnhMd7zgtXI5olli4RASjpX/hNKk=;
        b=dqE/Ezh07YxkgogWps6qogi2LzFfyb5gAn9G2knT0zVE/i6K89OzCfIPsaMxTIrpTi
         BLB6PNWcAeUMiq7xMwJcAdsaktY+nDSXyVgw2J/NOJre40v5jHPuxHOLuI7S1Myy/Xrb
         wDGBJnc70sz6llzKUtms6rWuQ5yeY0GEXeD0UBhgzS/yNC16ysc5lw2cks1R/Z0VAHFu
         pk5Ep73Pud7EC9LBm7PYITqfE26DZU1liNyPSC6fpFloXdDBD4K7tujP/akMUH1DCSQZ
         PX8VGC0rHHR9T1VTWZ6suYRwfRstJYEQ/Ojte4PDpzhUtpWbkE+6c3QNIFbL5oZCDEiF
         N77w==
X-Forwarded-Encrypted: i=1; AJvYcCV5bPDJqScW05Nr5n6m0uhRVN7vzd4ttt/PYJfjiAwj1Hgu4N9fIPs610jirrjOm5yn+7+0zBcmPoCEc5PhsvTB@lists.infradead.org, AJvYcCWiczMruJIvULSskjyGC3Ha/MbeETCC3KDpLfmELKkkNRlz9/ecJkDW1oFtvXPm6/VMYOlghb7Q5fO961owbuI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuN5Fxa8UwzA6cRDk4MnM3k7oU2Xhj+47/5zsoVfFmYC2lj4se
	oAF7OE2dMxk7sMnwLk4eO4xWYMNKJneY9p2vLkUYUWE+8qY/cpE8
X-Gm-Gg: ASbGncu8rSsjTJAFK5Y5zS80yeBKTrc4amDOPZNkNI9u7THl/lWNkqOGtNZI34/S8Va
	DegdY/fboTmTERFYeeycaahdkrrNW49+MxGxSlnumPCtyL4E3eFbQ3A14ZbS+GXIwA5toUylL2G
	ntrd2aWdg87IfzKV5LRKTILHwuV4gBzY9GVfLu6/06GD2HKjEBw6xa3+0PCM2lYAFKBVCaedhXV
	0wrcThpm08dv2lvbKfuGaf0BiXd3N1fN1+bb3VDGZuYbgXgtmYnPvPjTti9myNMw4cd2fpNRpEH
	5T147N8cn0syu9QWI6pCTxZo4t11akChM9ycnZN6a68yy1Imeguo9bg6TTpBlUUbOOSvkPir
X-Google-Smtp-Source: AGHT+IFmWBcDPInhp9w4btY1qA9eIzy3GXZXztUdnckb0Hqqtby2WfdghhMP/SBKRVAMezhhUK82sg==
X-Received: by 2002:a17:907:3da3:b0:ab7:9b86:598d with SMTP id a640c23a62f3a-abbcce1eeaemr613793166b.17.1740050196513;
        Thu, 20 Feb 2025 03:16:36 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba9bd6e22sm630838366b.121.2025.02.20.03.16.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2025 03:16:36 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v7 0/3] Add HDMI audio on the rk3588 SoC
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250217215641.372723-1-detlev.casanova@collabora.com>
Date: Thu, 20 Feb 2025 12:16:20 +0100
Cc: linux-kernel@vger.kernel.org,
 Algea Cao <algea.cao@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 dri-devel@lists.freedesktop.org,
 Niklas Cassel <cassel@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 kernel@collabora.com,
 David Airlie <airlied@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Charkov <alchark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Message-Id: <B8EF5196-55FB-44EC-B93C-E327C791225B@gmail.com>
References: <20250217215641.372723-1-detlev.casanova@collabora.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_031639_116778_EEFE552D 
X-CRM114-Status: GOOD (  29.69  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxNyBsdXQgMjAyNSwgbyBnb2R6LiAyMjo0NzoK
PiAKPiBUbyBzdXBwb3J0IEhETUkgYXVkaW8gb24gdGhlIHJrMzU4OCBiYXNlZCBkZXZpY2VzLCB0
aGUgZ2VuZXJpYyBIRE1JCj4gQ29kZWMgZnJhbWV3b3JrIGlzIHVzZWQgaW4gdGhlIGR3LWhkbWkt
cXAgRFJNIGJyaWRnZSBkcml2ZXIuCj4gCj4gVGhlIGltcGxlbWVudGF0aW9uIGlzIG1haW5seSBi
YXNlZCBvbiB0aGUgZG93bnN0cmVhbSBkcml2ZXIsIHBvcnRlZCB0byB0aGUKPiBnZW5lcmljIEhE
TUkgQ29kZWMgZnJhbWV3b3JrIFsxXSByZWNlbnRseSBtZXJnZWQgaW4gdGhlIG1hc3RlciBicmFu
Y2guCj4gVGhlIHBhcmFtZXRlcnMgY29tcHV0YXRpb24gaGFzIGJlZW4ga2VwdCBhcyBpcyBhbmQg
dGhlIGRhdGEgc3RvcmVkIGluIHRoZQo+IGR3X2hkbWlfcXAgc3RydWN0IGFzIGJlZW4gY2xlYW5l
ZCB1cC4KPiAKPiBUaGUgdGFibGUgZm9yIHRoZSBOIHZhbHVlcyBoYXMgYmVlbiBlZGl0ZWQgdG8g
cmVmbGVjdCBOIHJlY29tbWVuZGVkIHZhbHVlcwo+IGFzIHdlbGwgYXMgQ1RTIHJlY29tbWVuZGVk
IHZhbHVlcy4KPiAKPiBUaGUgZG93bnN0cmVhbSBrZXJuZWwgYWxzbyBpbXBsZW1lbnRzIGEgbWFj
aGluZSBkcml2ZXIgZm9yIEhETUkgYXVkaW8gYnV0Cj4gaXQgaXMgZG9pbmcgZXhhY3RseSB3aGF0
IHRoZSBzaW1wbGUtYXVkaW8tY2FyZCBkcml2ZXIgZG9lcywgc28gdXNlIHRoYXQKPiBpbnN0ZWFk
IGluIHRoZSBSSzM1ODggU29DIGRldmljZSB0cmVlLgo+IAo+IFRoaXMgYWRkcyBIRE1JIGF1ZGlv
IHN1cHBvcnQgZm9yIGJvdGggSERNSSBUWCBwb3J0cy4KPiAKPiAqKiogRGVwZW5kZW5jaWVzICoq
Kgo+IAo+IEJhc2VkIG9uIExpbnVzJyBtYXN0ZXIgYnJhbmNoLCBidXQgYWxzbyBuZWVkcyBDcmlz
dGlhbidzIGR0cyBwYXRjaGVzIGZvciBIRE1JMQo+IHN1cHBvcnQgWzJdLCB3aGljaCBkZXBlbmRz
IG9uIEhlaWtvJ3MgcGF0Y2hzZXQgZm9yCj4gcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHggWzNd
LiBQYXRjaGVzIHdpbGwgYXBwbHkgd2l0aG91dCBbM10sIGJ1dCBIRE1JIHdpbGwKPiBub3Qgd29y
ayAoYXQgYWxsKS4KPiAKPiBbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTIy
NC1kcm0tYnJpZGdlLWhkbWktY29ubmVjdG9yLXYxMC0wLWRjODk1NzdjZDQzOEBsaW5hcm8ub3Jn
Cj4gWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MTIxMS1y
azM1ODgtaGRtaTEtdjItMC0wMmNkY2EyMmZmNjhAY29sbGFib3JhLmNvbQo+IFszXTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MTIwNjEwMzQwMS4xNzgwNDE2LTMtaGVpa29Ac250
ZWNoLmRlLwo+IAo+IENoYW5nZXMgc2luY2UgdjY6Cj4gLSBGaXggYXJndW1lbnRzIGFsaWduZW1l
bnQgKGNoZWNrcGF0Y2ggLS1zdHJpY3Qgd2FybmluZ3MpCj4gLSBBZGQgaGRtaTEgYXVkaW8gc3Vw
cG9ydCB0b28KPiAtIE1vdmUgaGRtaTBfc291bmQgbm9kZSB1bmRlciBoZG1pMF9vdXRfY29uCj4g
Cj4gQ2hhbmdlcyBzaW5jZSB2NToKPiAtIFNpbXBsaWZ5IGF1ZGlvIG1hdGggY29tcHV0YXRpb24g
Zm9yIE4KPiAtIE1vdmUgaGRtaTAtc291bmQgbm9kZSB1cCB3aXRoIG90aGVyIGFkZHJlc3MtbGVz
cyBub2Rlcwo+IAo+IENoYW5nZXMgc2luY2UgdjQ6Cj4gLSBNb3ZlZCBoZG1pMF9hdWRpbyBub2Rl
IHRoZSByazM1ODgtYmFzZS5kdHNpCj4gLSBFbmFibGUgaGRtaTBfYXVkaW8gaW4gcmszNTg4LXJv
Y2stNWIuZHRzCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MzoKPiAtIFJlbmFtZWQgZnVuY3Rpb24gdG8g
c3RhcnQgd2l0aCBkd19oZG1pX3FwCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MjoKPiAtIEFsc28gY2xl
YXIgdGhlIGF1ZGlvIGluZm9mcmFtZQo+IC0gV3JpdGUgQVVESV9DT05URU5UUzAgdG8gaXRzIGRl
ZmF1bHQgdmFsdWUgaW4gY2FzZSBpdCBnZXRzIG92ZXJ3cml0dGVuLgo+IC0gU3RvcmUgdG1kc19j
aGFyX3JhdGUgaW4gdGhlIGR3X2hkbWlfcXAgc3RydWN0IGluIGF0b21pY19lbmFibGUKPiAtIENs
ZWFyIHRtZHNfY2hhcl9yYXRlIGluIGF0b21pY19kaXNhYmxlIGFuZCBvbmx5IHdyaXRlIHJlZ2lz
dGVycyB3aGVuCj4gICB0bWRzX2NoYXJfcmF0ZSBpcyBub3QgMC4KPiAtIERvIG5vdCB1c2UgY29u
bmVjdG9yX3N0YXRlIGR1cGxpY2F0ZXMKPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gUmVtb3Zl
IHVzZWxlc3MgYXVkaW9fbXV0ZXggKHdhcyB1c2VkIGRvd25zdHJlYW0gZm9yIG11bHRpcGxlIGRy
aXZlcnMgYWNjZXNzCj4gICB0byBhdWRpbyBmdW5jdGlvbnMpCj4gLSBMZXQgaGRtaV9jb2RlYyBi
dWlsZCBhbmQgc2V0dXAgYXVkaW8gaW5mb2ZyYW1lcwo+IC0gT25seSBhY2Nlc3MgYXVkaW8gcmVn
aXN0ZXJzIHdoZW4gY29ubmVjdG9yIGlzIGNvbm5lY3RlZAo+IC0gUmViYXNlZCBvbiBtYXN0ZXIg
YnJhbmNoCj4gCj4gRGV0bGV2IENhc2Fub3ZhICgyKToKPiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEFkZCBIRE1JIGF1ZGlvIG91dHB1dHMgZm9yIHJrMzU4OCBTb0MKPiAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IEVuYWJsZSBIRE1JIGF1ZGlvIG91dHB1dHMgZm9yIFJvY2sgNUIKPiAKPiBTdWdhciBa
aGFuZyAoMSk6Cj4gIGRybS9icmlkZ2U6IHN5bm9wc3lzOiBBZGQgYXVkaW8gc3VwcG9ydCBmb3Ig
ZHctaGRtaS1xcAo+IAo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2Uu
ZHRzaSB8ICAxNyArCj4gLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRyYS5k
dHNpIHwgIDE3ICsKPiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzICAg
ICAgfCAgMTYgKwo+IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5j
ICB8IDQ4OSArKysrKysrKysrKysrKysrKysKPiA0IGZpbGVzIGNoYW5nZWQsIDUzOSBpbnNlcnRp
b25zKCspCj4gCj4gLS0gCj4gMi40OC4xCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKCkRldGVsdiwKCkp1c3QgY3Vy
aW91cyBvZiB5b3VyIG9waW5pb246CgpJ4oCZbSBvbiA2LjE0LXJjMyBhbmQgdXNpbmcgaHR0cHM6
Ly9naXRsYWIuY29sbGFib3JhLmNvbS9jcmlzdGljYy9saW51eC1uZXh0Ly0vY29tbWl0cy9yazM1
ODgtaGRtaS1icmlkZ2UgKyB0aGlzIHY3IHNlcmllcy4KCk9uIG1pbmUgcm9jazViIGFsbCB3b3Jr
cyBuaWNlbHkgYnV0IC0gYXQgYm9vdCB0aW1lIC0gaeKAmW0gZ2V0dGluZyBzb21lIG9vcHMgaW4g
a2VybmVsIGxpa2UgdGhpczogaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vd2FycG1lL2UxNjY4YWNi
ZWY3ODE3ZTVkMmE4OGE2ODQwMzI4NzIyCgpJ4oCZbSBub3Qgc3VyZSB3aGVyZSBpc3N1ZSBpcyBi
dXQgaXQgbG9va3MgdG8gbWUgbGlrZSBraW5kIG9mIGludGVyZmVyZW5jZSBiZXR3ZWVuIGFuYWxv
ZyBhdWRpbyBhbmQgaGRtaSBhdWRpbyBhcyBjb21tZW50aW5nIGFuYWxvZyBhdWRpbyBpbiBkdHMg
KCBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUv
bGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
Yi5kdHM/aD12Ni4xNC1yYzMjbjI0ICkgc3RvcHMga2VybmVsIGZyb20gb29wc+KAmWluZ+KApi4K
CiByb2NrNWIgZHRzIGnigJltIHVzaW5nIGlzIGxpa2UgdGhpczogaHR0cHM6Ly9naXN0LmdpdGh1
Yi5jb20vd2FycG1lL2E4YTMyYWZkNGEwNWQ0YjdmMjVkMjgwODk4NGIwNWFjCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
