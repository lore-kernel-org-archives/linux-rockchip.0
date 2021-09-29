Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8096CC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 02:28:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4304560EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 02:28:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4304560EFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UstrrN2A+ek9XD9Se2jsbFXNZBq7CLj2/mBHnSz8lXU=; b=PFy0qwvDnlzW+Z
	4ElqKO4UoTNje4pv1I/diS+6YKMKhS0moeMjw4vW3hXRVO6Mt45WThAU9Lyv+liQBfdM134bRSYXC
	aX5cC/LjbGwkackvF8aiII37tEL8h0QG13nEdW3uIB0Rhy40Il+mVEsv2tcD2I3OYlyJIN23LUvU5
	FaCmmGpP6zmXZABF5Vf9Jp7Ih0VjMpMBdVbWglDVleEAUgdy8ScLZaE+B5gaSnBGEg5ujRx5XhC+O
	3ahaoKYBQtvIO9eKAvXVBmg2BBWbVj9STJTStzJKPCMLSHkfYOQEi+yidcvcUdKuOL1r6Gu9qXqIK
	wVGf+39pGg14jNyb20OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVPKH-009hgp-J9; Wed, 29 Sep 2021 02:28:05 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVPKF-009hfl-0a
 for linux-rockchip@lists.infradead.org; Wed, 29 Sep 2021 02:28:04 +0000
Received: by mail-lf1-x12f.google.com with SMTP id i19so1430617lfu.0
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 19:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fJjBCR4+9bCZVm0Fu8Xcmw+g/rqGltdjILLNILMG/mA=;
 b=gZItg880S7ngvt1ScsVFZbT92Pz35STUpkg7MtmBPG38S8oE0RNWXVxg5AsCJmsiso
 gjU9EtdpeqLxN8TOF5kWZEb6v6ULSNqjKWay2YeRQCSYzJo2aiENwykZpJGyAuHjhXlY
 nukor5W0hJzjkNO93yWm4lxshhwfHKxlrCThA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fJjBCR4+9bCZVm0Fu8Xcmw+g/rqGltdjILLNILMG/mA=;
 b=tlDTs0fWt7CtfH/BMYuulRFKyGiyKJq2Np7rekz9nWho8df4v6+XCZH4pPqW2BAKit
 eZqcZKq87k9GPWhIowDscztU4yohnGTPU1JZxZMiki5EfA9vOHUG8O8TYUPpDT729xAn
 2wG+kfDSibp+cOcvALhDjgRW/gUjJoRWjEh6ez+l1U1cNDJLpir5MHDNlwWUdP2gLxkg
 wxZlz/5Vv9oCK6XuLQXgQENrfq9yw1KQf0Jm1xJSsm8GpigS8vuyIyBkH3DoHf8nBi6d
 r/CU3zMvscI6Fsggey9vZrMD+A4G6aCB0xKZqTFLv50+m9IPB+OUBYxp27jTURn0Vhl5
 /aWQ==
X-Gm-Message-State: AOAM53344K6NEKp70OEB6Q0qB1nS8/dh7vkL8XBw/1lr4Yfcu1SWiWKS
 xQfkLfCDcLH7n9LhwPCEnrnwb2jQPxTuSpL4S9O2NA==
X-Google-Smtp-Source: ABdhPJxtLJKFI2ooM24bJMRumtCIgTrU9ia9VK2xsan8DKGDUzhXg/ByJkFUAByLAPwnyRDMK4Wt9rw5VOO0jFuGCL8=
X-Received: by 2002:ac2:495b:: with SMTP id o27mr8638251lfi.501.1632882477417; 
 Tue, 28 Sep 2021 19:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210928213552.1001939-1-briannorris@chromium.org>
 <20210928143413.v3.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
In-Reply-To: <20210928143413.v3.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 29 Sep 2021 10:27:46 +0800
Message-ID: <CAGXv+5FO2GrH9BQ=ohH-oE_A6rKAoEfpbAB_1Qsq9v0vGJ+7ww@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] drm/rockchip: dsi: Hold pm-runtime across
 bind/unbind
To: Brian Norris <briannorris@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, 
 Thomas Hebb <tommyhebb@gmail.com>, aleksandr.o.makarov@gmail.com,
 stable@vger.kernel.org, 
 =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_192803_063689_AEAB0F75 
X-CRM114-Status: GOOD (  17.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBTZXAgMjksIDIwMjEgYXQgNTozNiBBTSBCcmlhbiBOb3JyaXMgPGJyaWFubm9ycmlz
QGNocm9taXVtLm9yZz4gd3JvdGU6Cj4KPiBJbiBjb21taXQgNDNjMmRlMTAwMmQyLCB3ZSBtb3Zl
ZCBtb3N0IEhXIGNvbmZpZ3VyYXRpb24gdG8gYmluZCgpLCBidXQgd2UKPiBkaWRuJ3QgbW92ZSB0
aGUgcnVudGltZSBQTSBtYW5hZ2VtZW50LiBUaGVyZWZvcmUsIGRlcGVuZGluZyBvbiBpbml0aWFs
Cj4gYm9vdCBzdGF0ZSwgcnVudGltZS1QTSB3b3JrcXVldWUgZGVsYXlzLCBhbmQgb3RoZXIgdGlt
aW5nIGZhY3RvcnMsIHdlCj4gbWF5IGRpc2FibGUgb3VyIHBvd2VyIGRvbWFpbiBpbiBiZXR3ZWVu
IHRoZSBoYXJkd2FyZSBjb25maWd1cmF0aW9uCj4gKGJpbmQoKSkgYW5kIHdoZW4gd2UgZW5hYmxl
IHRoZSBkaXNwbGF5LiBUaGlzIGNhbiBjYXVzZSB1cyB0byBsb3NlCj4gaGFyZHdhcmUgc3RhdGUg
YW5kIGZhaWwgdG8gY29uZmlndXJlIG91ciBkaXNwbGF5LiBGb3IgZXhhbXBsZToKPgo+ICAgZHct
bWlwaS1kc2ktcm9ja2NoaXAgZmY5NjgwMDAubWlwaTogZmFpbGVkIHRvIHdyaXRlIGNvbW1hbmQg
RklGTwo+ICAgcGFuZWwtaW5ub2x1eC1wMDc5emNhIGZmOTYwMDAwLm1pcGkuMDogZmFpbGVkIHRv
IHdyaXRlIGNvbW1hbmQgMAo+Cj4gb3I6Cj4KPiAgIGR3LW1pcGktZHNpLXJvY2tjaGlwIGZmOTY4
MDAwLm1pcGk6IGZhaWxlZCB0byB3cml0ZSBjb21tYW5kIEZJRk8KPiAgIHBhbmVsLWtpbmdkaXNw
bGF5LWtkMDk3ZDA0IGZmOTYwMDAwLm1pcGkuMDogZmFpbGVkIHdyaXRlIGluaXQgY21kczogLTEx
MAo+Cj4gV2Ugc2hvdWxkIG1hdGNoIHRoZSBydW50aW1lIFBNIHRvIHRoZSBsaWZldGltZSBvZiB0
aGUgYmluZCgpL3VuYmluZCgpCj4gY3ljbGUuCj4KPiBUZXN0ZWQgb24gQWNlciBDaHJvbWV0YWIg
MTAgKFJLMzM5OSBHcnUtU2NhcmxldCksIHdpdGggcGFuZWwgZHJpdmVycwo+IGJ1aWx0IGVpdGhl
ciBhcyBtb2R1bGVzIG9yIGJ1aWx0LWluLgo+Cj4gU2lkZSBub3RlczogaXQgc2VlbXMgb25lIGlz
IG1vcmUgbGlrZWx5IHRvIHNlZSB0aGlzIHByb2JsZW0gd2hlbiB0aGUKPiBwYW5lbCBkcml2ZXIg
aXMgYnVpbHQgaW50byB0aGUga2VybmVsLiBJJ3ZlIGFsc28gc2VlbiB0aGlzIHByb2JsZW0KPiBi
aXNlY3QgZG93biB0byBjb21taXRzIHRoYXQgc2ltcGx5IGNoYW5nZWQgS2NvbmZpZyBkZXBlbmRl
bmNpZXMsIGJlY2F1c2UKPiBpdCBjaGFuZ2VkIHRoZSBvcmRlciBpbiB3aGljaCBkcml2ZXIgaW5p
dCBmdW5jdGlvbnMgd2VyZSBjb21waWxlZCBpbnRvCj4gdGhlIGtlcm5lbCwgYW5kIHRoZXJlZm9y
ZSB0aGUgb3JkZXJpbmcgYW5kIHRpbWluZyBvZiBidWlsdC1pbiBkZXZpY2UKPiBwcm9iZS4KPgo+
IEZpeGVzOiA0M2MyZGUxMDAyZDIgKCJkcm0vcm9ja2NoaXA6IGRzaTogbW92ZSBhbGwgbGFuZSBj
b25maWcgZXhjZXB0IExDREMgbXV4IHRvIGJpbmQoKSIpCj4gTGluazogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvOWFlZGZiNTI4NjAwZWNmODcxODg1ZjcyOTNjYTQyMDdj
ODRkMTZjMS5jYW1lbEBnbWFpbC5jb20vCj4gUmVwb3J0ZWQtYnk6IDxhbGVrc2FuZHIuby5tYWth
cm92QGdtYWlsLmNvbT4KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9m
Zi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+Cj4gVGVzdGVkLWJ5
OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJvbWl1bS5vcmc+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
