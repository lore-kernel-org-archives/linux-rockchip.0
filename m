Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD34FC388F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:48:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CD422085B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:48:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JrCZfm4v";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qmBYxFH4"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CD422085B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HWjoOfst3TG3Psq+70m6FAQ1kmpajIbO6Ga+095u4FA=; b=JrCZfm4vrvAbft1/3Svv/qHOU
	yD6DsMCeCd/Q84a/bXO3zyb/7ubeutVLrLJeE4fgnoZ3t5jev/7TK6/WYVTwN6bH1cKwIsSI+9vD+
	+dpKsCXaZbc0hYu2KzrJIRTWZl1t8n++os2+0OblCvrCnRRiQZlx7uzFL74r5ZmtQiBUEt6dEBBZb
	XIlf3GydMvwPpy2/Dgi0MYWApaoc2ifN3fuix47As7ILa9k988niIjiQfD8kny11t2FgfQ7pWXk74
	OYAQZGcyJYPpOKj+3ISZW0Pd8mDVd1qwN5F7pYNzAqDpKHwSboM+G91p+vo2cQd+yiPp8ZI4zQPii
	usQ/uvNEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdCxK-0006JQ-Ou; Thu, 12 Nov 2020 13:48:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdCxH-0006IP-VJ
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 13:48:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id 10so5330295wml.2
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 05:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1tbEiFf3A3FJTw3Dwkaz00LQ7f5DUN60HnF7WkHWr1k=;
 b=qmBYxFH4Ly0Mk4J6ZundTvylOZyxcFSYt7pn6I5HS8UphxxI4tQYlzc1GTvTY+lnRF
 9JAQZGFAJFDdOLxjf0tiB7MdS4lNMfu0nVsSLGsuWAWW9WQeTg89YqjcujVkv3vgUgjo
 mQ+hzOXIU6W1xmRA1oqUv3/HamZpdPJ+t3WhZTd1RfVzkxgAF4/xU0hnQB1XluM+WLNN
 +WlwQWLVmaDixyKZBsG/uev5Ad3SYf2B4Xd9E/MBz201x5bCaBrHL+JYNtuMn24PVNUP
 6Oikr3FB5N5Hj4a2AnqD4+Fb2O+Rjqj3v7h8QdUTmMRLqmodndjNLlnK0EZ2aHBLdjOB
 U17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1tbEiFf3A3FJTw3Dwkaz00LQ7f5DUN60HnF7WkHWr1k=;
 b=Ko41o0cEpXfXxyPVKLCZSErYSYiYvf1yQN8fJz1+Tfyhqxc3hmAcFIVwKpnt0Md6Rw
 w1IyW1EPL8IcRYb2lNfCbW+6bxFEIQeabONGOCjmHoW4op9iZ7IblonhBRhKFuKbak7k
 WqF0Mz8KxR2LGCHRl6A2xXndm8I5dI9HZaD5MWSSy5fEFyoGWG0migFvECuh981LskKi
 gwjVdkNl52ozYCckR+P0BBVrnQBTdEC8/ThFm9i8FfMMuTgT+4jRDPFfSKpg5eCPpSK+
 PeXQXb2SvsZ3sdvl4bPexDbayvMMWAuDEUsVSa2JwDvgT/jOoYYP97E7X2Nv25Z1PaBo
 bN+Q==
X-Gm-Message-State: AOAM531JUkAeLkfwqY4BQ4TScpXBeG7ZviXQWRBXUV2kcAqK9EHmFAm0
 RMW+829h05I/CWcWTD8TJjy4wQ==
X-Google-Smtp-Source: ABdhPJzyzG5VzyN78q8AphzAInBKduxb4a7K6b/2OTvpBDlCNThbNozfWU2e2Qae4qd8FcYtQFlbdA==
X-Received: by 2002:a1c:c286:: with SMTP id s128mr9765284wmf.88.1605188881687; 
 Thu, 12 Nov 2020 05:48:01 -0800 (PST)
Received: from dell ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id g66sm6577232wmg.37.2020.11.12.05.48.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:48:00 -0800 (PST)
Date: Thu, 12 Nov 2020 13:47:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 05/25] soc: rockchip: io-domain: Remove incorrect and
 incomplete comment header
Message-ID: <20201112134759.GL1997862@dell>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
 <2215873.HjEmSL4Tfo@diego> <20201112132828.GK1997862@dell>
 <5334671.Lg3upMlxu3@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5334671.Lg3upMlxu3@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_084804_018926_60943B8C 
X-CRM114-Status: GOOD (  21.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAxMiBOb3YgMjAyMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgo+IEFtIERvbm5lcnN0
YWcsIDEyLiBOb3ZlbWJlciAyMDIwLCAxNDoyODoyOCBDRVQgc2NocmllYiBMZWUgSm9uZXM6Cj4g
PiBPbiBUaHUsIDEyIE5vdiAyMDIwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IAo+ID4gPiBB
bSBEb25uZXJzdGFnLCAxMi4gTm92ZW1iZXIgMjAyMCwgMTQ6MjI6MjQgQ0VUIHNjaHJpZWIgTGVl
IEpvbmVzOgo+ID4gPiA+IE9uIFRodSwgMTIgTm92IDIwMjAsIEhlaWtvIFN0w7xibmVyIHdyb3Rl
Ogo+ID4gPiA+IAo+ID4gPiA+ID4gQW0gRG9ubmVyc3RhZywgMTIuIE5vdmVtYmVyIDIwMjAsIDEx
OjMzOjQ0IENFVCBzY2hyaWViIExlZSBKb25lczoKPiA+ID4gPiA+ID4gT24gVHVlLCAwMyBOb3Yg
MjAyMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBGaXhlcyB0
aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmM6NTc6IHdhcm5p
bmc6IENhbm5vdCB1bmRlcnN0YW5kICAqIEBzdXBwbGllczogdm9sdGFnZSBzZXR0aW5ncyBtYXRj
aGluZyB0aGUgcmVnaXN0ZXIgYml0cy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBDYzog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+ID4gPiA+ID4gPiBDYzogTGlhbSBH
aXJkd29vZCA8bGdpcmR3b29kQGdtYWlsLmNvbT4KPiA+ID4gPiA+ID4gPiBDYzogTWFyayBCcm93
biA8YnJvb25pZUBrZXJuZWwub3JnPgo+ID4gPiA+ID4gPiA+IENjOiAiUmFmYWVsIEouIFd5c29j
a2kiIDxyYWZhZWwuai53eXNvY2tpQGludGVsLmNvbT4KPiA+ID4gPiA+ID4gPiBDYzogRG91ZyBB
bmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+ID4gPiA+ID4gPiA+IENjOiBsaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4g
PiA+ID4gPiAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMgfCAzIC0tLQo+ID4gPiA+
ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMg
Yi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9pby1kb21haW4uYwo+ID4gPiA+ID4gPiA+IGluZGV4IGVl
Y2U5N2Y5N2VmOGYuLmQxM2QyZDQ5NzcyMGIgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gLS0tIGEvZHJp
dmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMKPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJz
L3NvYy9yb2NrY2hpcC9pby1kb21haW4uYwo+ID4gPiA+ID4gPiA+IEBAIC01Myw5ICs1Myw2IEBA
Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ICBzdHJ1Y3Qgcm9ja2NoaXBfaW9kb21haW47
Cj4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+IC0vKioKPiA+ID4gPiA+ID4gPiAtICogQHN1
cHBsaWVzOiB2b2x0YWdlIHNldHRpbmdzIG1hdGNoaW5nIHRoZSByZWdpc3RlciBiaXRzLgo+ID4g
PiA+ID4gPiA+IC0gKi8KPiA+ID4gPiA+ID4gPiAgc3RydWN0IHJvY2tjaGlwX2lvZG9tYWluX3Nv
Y19kYXRhIHsKPiA+ID4gPiA+ID4gPiAgCWludCBncmZfb2Zmc2V0Owo+ID4gPiA+ID4gPiA+ICAJ
Y29uc3QgY2hhciAqc3VwcGx5X25hbWVzW01BWF9TVVBQTElFU107Cj4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiBBbnkgaWRlYSB3aG8gd2lsbCBwaWNrIHRoaXMgdXA/Cj4gPiA+ID4gPiAKPiA+ID4g
PiA+IG1lIDotKQo+ID4gPiA+IAo+ID4gPiA+IFdlbGwsIHRoYXQncyBjZXJ0YWlubHkgYSBzdGFy
dC4gOikKPiA+ID4gPiAKPiA+ID4gPiBXaGF0IGFyZSB5b3VyIHBsYW5zPwo+ID4gPiAKPiA+ID4g
dGhlIHVzdWFsLCBteSByb2NrY2hpcC10cmVlIC0+IGFybXNvYyBkcml2ZXIgYnJhbmNoIC0+IHRv
cnZhbGRzIC0+IDUuMTEgOy0pCj4gPiAKPiA+IFNvcnJ5LCB0aGUgYW1iaWd1aXR5IHdhcyBteSBm
YXVsdC4KPiA+IAo+ID4gV2hlbiBkbyB5b3UgcGxhbiBvbiBob292ZXJpbmcgaXQgdXA/Cj4gCj4g
c29ycnkgc2hvdWxkJ3ZlIHdyaXR0ZW4gdGhhdCBkaXJlY3RseSAuLi4gSSBhbHJlYWR5IGRpZCB0
aGlzICJtb3JuaW5nIjoKPiAKPiBodHRwOi8vbG9yZS5rZXJuZWwub3JnL3IvMTYwNTE3OTc1NDU1
LjgxNTA2LjE2Mjg5NDMyNjEyMjc5MDg5OTQ1LmI0LXR5QHNudGVjaC5kZQoKQWgsIHBlcmZlY3Qu
ICBUaGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVh
ZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
