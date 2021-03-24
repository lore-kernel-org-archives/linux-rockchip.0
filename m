Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B450C433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 17:21:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE1C1619C9
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 17:21:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE1C1619C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aO7G005s2Xe2pfafFH3/yGZgaCAgZmnSiLF4RQDMXnQ=; b=Pmw4c35t3jecnAHCdZIQpQrhC
	JmIw6nSPizyAYX7d6VlDYmEylaABDMMiLowO2Ttaqh4OIIHJZ8QtaU2xPRPunWqtYCCOQdCKuw34Z
	WsSSSQQVF6/O84wxG3GCWjzptot/sXmWsVMGL50BDeNwtCbEdPLfE3DC3/bucedNKZb8IiVofXRYw
	3B5gbvriTalootQ9HSMAreFkTCyOrsG5oyId7D2xCuz/ylmwcfLTgfntzXjeULI7qJF93rXv31+ck
	dNnyvIVqADPjTz2lBC2dNazmSqRzfPqLEUPcM5gJdfg2PeyHcxUDO9jD+joU2TRrE/IOmkE30ndra
	TwJwe150Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP7CK-00HVSK-CT; Wed, 24 Mar 2021 17:21:36 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP7C9-00HVPz-8j; Wed, 24 Mar 2021 17:21:28 +0000
Received: by mail-ej1-x632.google.com with SMTP id b7so34198231ejv.1;
 Wed, 24 Mar 2021 10:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ROVD6p8uWXCEzUfy6fJv/Vx954JFE0p8W73iVJQaYSI=;
 b=ccRE/yRezGAfcVnuNAQV8LBeXvGefdRC+zrTt4K87lxDa3E/cMLXKP38ThihsYN3+u
 1O+pWkGWKMokC+ym3AdANZrogKxGBXQLxxFqxJ5xac5R5KmNAKwUIjHZwuv9pHgCQMr7
 6eyHO6/6HQYossBzEEtfGg1KnLBMEQDUK8lO9AQeV3x1nCqPDv/X80ACGW2LX5NjcLqU
 1rys515irZv5F+38Sl/3T7s/ETabI2lD79sc78+zRMAiEZatopH2G+ouKDqcDjPJoSlX
 xbcAheWhx6kv9ZygaCwdgQ7pIkh1k92vCQjkMKn8dGPkoHuTKHHRZniEzTonhx4paYc/
 tG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ROVD6p8uWXCEzUfy6fJv/Vx954JFE0p8W73iVJQaYSI=;
 b=gpc+D2Vxd205ORlP4+/tXZ1dOR8LwJFsf/UR5AQHvOr3Gp0GWgioxZAr7YC+d2oQqw
 uBwhvWyPCFiWZ7SZkbUnth2d8DhtabHoKElNVZM9fS8HJFkT9mP8RfYGti0T4/p6IpGt
 YiRIiYBErTj9f5K0l6V6pGgQ0oWkNywxEedn81q4Y4ghTGoXKeVvSB2LcUyUtpoW5GJt
 H6zxxZIXUXGEqKelvByNbyhm6+wI+oqaYN9Z75NAPkrM3nAz8vpR52VO4fFpKW1aX/ta
 18wx+hptRXjimfx/lR2BEPtOXiBPHIFX4l3eEQ0b/G0MJeBoW/7gJW6FZN2O/unqiBuT
 Z5iA==
X-Gm-Message-State: AOAM533Ih48qt9soe/0n2fmrMg8TqEwLhLzqKxDSPiAnpHRI/GWiosCB
 Vn9+FkUFId69bYRHsdxin6k=
X-Google-Smtp-Source: ABdhPJxXPXyXb5CpO8/df0wLucEXxyD42Eyw+KiYYQEpFqg0f1nkj759Nev3X7z9xcQeMhl8TZohCQ==
X-Received: by 2002:a17:906:c9c2:: with SMTP id
 hk2mr4928118ejb.244.1616606484688; 
 Wed, 24 Mar 2021 10:21:24 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 w6sm1205140eje.107.2021.03.24.10.21.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Mar 2021 10:21:24 -0700 (PDT)
Subject: Re: [PATCH v5 2/8] usb: dwc3: of-simple: bail probe if no dwc3 child
 node
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 gregkh@linuxfoundation.org, balbi@kernel.org
Cc: robh+dt@kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210209192350.7130-1-jbx6244@gmail.com>
 <20210209192350.7130-2-jbx6244@gmail.com> <1861638.PYKUYFuaPT@diego>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <919d24be-69e5-72be-8627-8ebabd1d693d@gmail.com>
Date: Wed, 24 Mar 2021 18:21:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <1861638.PYKUYFuaPT@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_172126_096604_AE150B3B 
X-CRM114-Status: GOOD (  29.82  )
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

T24gMy8yNC8yMSA1OjQxIFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBHcmVnLCBGZWxp
cGUsCj4gCj4gQW0gRGllbnN0YWcsIDkuIEZlYnJ1YXIgMjAyMSwgMjA6MjM6NDQgQ0VUIHNjaHJp
ZWIgSm9oYW4gSm9ua2VyOgo+PiBGb3Igc29tZSBvZiB0aGUgZHdjMy1vZi1zaW1wbGUgY29tcGF0
aWJsZSBTb0NzIHdlCj4+IGRvbid0IHdhbnQgdG8gYmluZCB0aGlzIGRyaXZlciB0byBhIGR3YzMg
bm9kZSwKPj4gYnV0IGJpbmQgdGhhdCBub2RlIHRvIHRoZSAnc25wcyxkd2MzJyBkcml2ZXIgaW5z
dGVhZC4KPj4gVGhlIGtlcm5lbCBoYXMgbm8gbG9naWMgdG8gZGVjaWRlIHdoaWNoIGRyaXZlciB0
byBiaW5kCj4+IHRvIGlmIHRoZXJlIGFyZSAyIG1hdGNoaW5nIGRyaXZlcnMsIHNvIGJhaWwgcHJv
YmUgaWYgbm8KPj4gZHdjMyBjaGlsZCBub2RlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBK
b25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+IAo+IEl0IGxvb2tzIGxpa2UgdGhpcyBwYXRjaCBm
ZWxsIHRocm91Z2ggdGhlIGNyYWNrcz8KPiAKPiBJLmUuIEkgY2FuIHNlZSBwYXRjaGVzIDErNiBh
ZGRpbmcgdGhlIGRldmljZXRyZWUgYmluZGluZ3MKPiBpbiA1LjEyLXJjIGJ1dCBoYXZlbid0IGZv
dW5kIHRoaXMgcGF0Y2ggdGhlcmUuCj4gCj4gQW5kIGxvb2tpbmcgYXQKPiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ncmVna2gvdXNiLmdpdC9sb2cvZHJp
dmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jP2g9dXNiLW5leHQKPiBJIGFsc28gZGlkbid0
IGZpbmQgaXQuCj4gCj4gRnJvbSB3aGF0IEkgZ2F0aGVyZWQgdGhhdCB3YXMgc29tZWhvdyBtYW5k
YXRlZCBmcm9tIHRoZSBEZXZpY2V0cmVlIHNpZGUKPiBhcyB0aGUgZHdjMy1zdWJub2RlIHN5c3Rl
bSBtZXJlbHkgaXMgc29tZSBMaW51eC1zcGVjaWZpYyB0aGluZ3kKPiBhbmQgc2hvdWxkIG5vdCBi
ZSBlbmZvcmNlZCBpZiBub3QgZXhwbGljaXRseSBuZWVkZWQuCj4gCgo+IEkgZ3Vlc3MgSm9oYW4g
Y2FuIHByb3ZpZGUgcG9pbnRlcnMgdG8gdGhlIHByZXZpb3VzIGRpc2N1c3Npb24uCgpDb21tZW50
IGJ5IFJvYiBpbiB2ZXJzaW9uIDM6ClByZXN1bWFibHkgeW91IGFyZSBnZXR0aW5nIGx1Y2t5IGhl
cmUgKHdpdGggbGluayBvcmRlcikuIFRoZSBrZXJuZWwKaGFzIG5vIGxvZ2ljIHRvIGRlY2lkZSB3
aGljaCBkcml2ZXIgdG8gYmluZCB0byBpZiB0aGVyZSBhcmUgMiBtYXRjaGluZwpkcml2ZXJzLiBJ
ZiB3ZSBkaWQsIGl0IHdvdWxkIHByb2JhYmx5IGJlIHRoZSBvcHBvc2l0ZSBvZiB3aGF0IHlvdSB3
YW50CmhlcmUgYXMgd2UnZCBwaWNrIHRoZSBtb3N0IHNwZWNpZmljIG1hdGNoLiBUaGlzIGRyaXZl
ciBzaG91bGQgcHJvYmFibHkKYmFpbCBwcm9iZSBpZiBubyBkd2MzIGNoaWxkIG5vZGUuCgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDIxMDIwNTExNDAxMS4xMDM4MS02
LWpieDYyNDRAZ21haWwuY29tLwoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2No
aXAvQ0FMX0pzcUp3TmRVZm9ZTThTWm1PZ01HOWlBeVprSjQta3pqamlERG1fbWRtZ2hURU9BQG1h
aWwuZ21haWwuY29tLwoKPiAKPiBTbyBjb3VsZCB5b3UgbG9vayBhdCBhcHBseWluZyB0aGlzIHBh
dGNoIHRvIHNvbWUgdXNiLXRyZWU/Cj4gCj4gCj4gVGhhbmtzCj4gSGVpa28KPiAKPiAKPj4gLS0t
Cj4+ICBkcml2ZXJzL3VzYi9kd2MzL2R3YzMtb2Ytc2ltcGxlLmMgfCA0ICsrKysKPj4gIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNi
L2R3YzMvZHdjMy1vZi1zaW1wbGUuYyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUu
Ywo+PiBpbmRleCBlNjJlY2QyMmIuLjM0N2I0ZDM4NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy91
c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCj4+ICsrKyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1v
Zi1zaW1wbGUuYwo+PiBAQCAtMzgsNiArMzgsMTAgQEAgc3RhdGljIGludCBkd2MzX29mX3NpbXBs
ZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCj4+ICAJaW50CQkJcmV0
Owo+PiAgCj4+ICsJLyogQmFpbCBwcm9iZSBpZiBubyBkd2MzIGNoaWxkIG5vZGUuICovCj4+ICsJ
aWYgKCFvZl9nZXRfY29tcGF0aWJsZV9jaGlsZChkZXYtPm9mX25vZGUsICJzbnBzLGR3YzMiKSkK
Pj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4+ICsKPj4gIAlzaW1wbGUgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplb2YoKnNpbXBsZSksIEdGUF9LRVJORUwpOwo+PiAgCWlmICghc2ltcGxlKQo+PiAgCQly
ZXR1cm4gLUVOT01FTTsKPj4KPiAKPiAKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
