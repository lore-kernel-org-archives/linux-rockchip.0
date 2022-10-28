Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94CDC38A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 17:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3upYi6CQw/4ntwBKjvqg0h6Gdu0K0OQu8Y6KMS/w1mg=; b=AdTiAtHxOcXSRD
	UV9RrDeAAeLTpHHhxaICHTElIzcLyC3rnr6RZmHKtY9j+B6ZAZ5PgPbGmByLT2OFAOzAspYwT47Lh
	xHsgraPbdcpAPZwiX8kZ+OzB2JXNtX9Jdvk2u+5OBAQCufJACAxpUNT1Xf3RpuWLEhT2Az18AOxgL
	lkZs1JKParHtusztcqFdRX4ihYFGjJBGOxLgyM21s7Lu++LYGrCHTGEwRbFuM3zKnJw0cUsDSxYaq
	L/pCAKaZ+TbpvC1fX0SObHARCbnnoX4wFwTIqRdPbJnfBZQTgpbUuYNebDL0R0J5goTLrFkFnHRkX
	UX752Gq2lNhvfiPsM/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooTDR-001Ke9-Sf; Fri, 28 Oct 2022 17:32:21 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooShu-0015m2-Cc
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 16:59:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id f27so14384989eje.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 09:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LdBYaH8Vkz/OFpcUliUNXSUHa5224PBWc/8NFz84BpI=;
        b=UYFDgpwh4gQXASm0ajaOXIPSZAnokFKGRz3i8tZtZbSWWnZolu06tgNOMllG7MRETN
         Tm4lTLSVv7CzCYX+BzbeoW4IwwOM8E6/x5qA7mq65SVAL2oHVUeyUul5Xr+eOeqg2f7B
         QsTh2p1iAaL01/r/mfd3lrKoSa0L0Ta20tWgNpIp/Dg5kwRTi+pt+q12GtnLc98XSJsC
         RX8Qrw7tDZ1DirvKxw/yjeXtx7rfncdWpDcvZBYHhMVQGNh8UjOEpiZaUW7i4W37dzhf
         wCtxsU6WA1SP9LV0GcnBarIow754Qsz7AS2uYmTUFRlxLcgKdSvGX13UhPutYURKcwxl
         wHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LdBYaH8Vkz/OFpcUliUNXSUHa5224PBWc/8NFz84BpI=;
        b=Ztux8aHJ+qBWp4aMT2E43YnSGt+gYyE3wEzbf1NrR4O+QkdpH5xB9Ddu82bjB4iLC2
         +LO0KKii+s/K/zufxcFUrEdB2Zv19Vn+HMAwg71OGmh0C3QjwWrzksyW9awvTV/+jxp9
         EZGF+jMZNysDMuFh37c1rcc3TOUQL4POeO4mmyVie9v69URzKMTxLwane73LOSzzQx+P
         Gy2W8koyGMCxTwFYlZ5j13m0h5G8LowgUlnQNuAhsljd2KLQL9ZfHq5GMZbUthzs/DTZ
         RSUCKaZUxubeagJ6yTBHO6geR+GwPjWF6moiCLfCvkH3ucayWb9KFpujiUyaCzYZ+0ZC
         iS7g==
X-Gm-Message-State: ACrzQf24otNN74G3OHWPzdT57QrbdXp8f4OH/Y0UuOFszaoxmJCH8j2l
	RKVpp4UWcZ6OisjHLm6155w4mQ==
X-Google-Smtp-Source: AMsMyM4b6Makf2XUO4oZ8JASTD+TYGiZ5WlRT4RQswqjcl1lt6qbCvTXNliMY/qz6n9V80ctCVXTPA==
X-Received: by 2002:a17:907:31c7:b0:740:e3e5:c025 with SMTP id xf7-20020a17090731c700b00740e3e5c025mr249555ejb.341.1666976379411;
        Fri, 28 Oct 2022 09:59:39 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id t17-20020a170906065100b0072f112a6ad2sm2387793ejb.97.2022.10.28.09.59.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Oct 2022 09:59:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v2] regulator: core: Resolve supply name earlier to
 prevent double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <166083617547.142744.6260121456450934801.b4-ty@kernel.org>
Date: Fri, 28 Oct 2022 18:59:36 +0200
Cc: wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Message-Id: <D80E1210-85D4-4D05-8FB7-843CED790A60@kohlschutter.com>
References: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
 <YtlqPbbBceBmekcV@sirena.org.uk>
 <E0925148-3F0E-4DD6-9872-96778BFE39DE@kohlschutter.com>
 <166083617547.142744.6260121456450934801.b4-ty@kernel.org>
To: Mark Brown <broonie@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_095946_450779_9BC56793 
X-CRM114-Status: GOOD (  18.74  )
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

PiBPbiAxOC4gQXVnIDIwMjIsIGF0IDE3OjIyLCBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5v
cmc+IHdyb3RlOgo+IAo+IE9uIEZyaSwgMjIgSnVsIDIwMjIgMTk6NDI6MjcgKzAyMDAsIENocmlz
dGlhbiBLb2hsc2Now7x0dGVyIHdyb3RlOgo+PiBQcmV2aW91c2x5LCBhbiB1bnJlc29sdmVkIHJl
Z3VsYXRvciBzdXBwbHkgcmVmZXJlbmNlIHVwb24gY2FsbGluZwo+PiByZWd1bGF0b3JfcmVnaXN0
ZXIgb24gYW4gYWx3YXlzLW9uIG9yIGJvb3Qtb24gcmVndWxhdG9yIGNhdXNlZAo+PiBzZXRfbWFj
aGluZV9jb25zdHJhaW50cyB0byBiZSBjYWxsZWQgdHdpY2UuCj4+IAo+PiBUaGlzIGluIHR1cm4g
bWF5IGluaXRpYWxpemUgdGhlIHJlZ3VsYXRvciB0d2ljZSwgbGVhZGluZyB0byB2b2x0YWdlCj4+
IGdsaXRjaGVzIHRoYXQgYXJlIHRpbWluZy1kZXBlbmRlbnQuIEEgc2ltcGxlLCB1bnJlbGF0ZWQg
Y29uZmlndXJhdGlvbgo+PiBjaGFuZ2UgbWF5IGJlIGVub3VnaCB0byBoaWRlIHRoaXMgcHJvYmxl
bSwgb25seSB0byBiZSBzdXJmYWNlZCBieQo+PiBjaGFuY2UuCj4+IAo+PiBbLi4uXQo+IAo+IEFw
cGxpZWQgdG8KPiAKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9icm9vbmllL3JlZ3VsYXRvci5naXQgZm9yLW5leHQKPiAKPiBUaGFua3MhCj4gCj4gWzEv
MV0gcmVndWxhdG9yOiBjb3JlOiBSZXNvbHZlIHN1cHBseSBuYW1lIGVhcmxpZXIgdG8gcHJldmVu
dCBkb3VibGUtaW5pdAo+ICAgIGNvbW1pdDogOGE4NjZkNTI3YWMwNDQxYzBlYjE0YTk5MWZhMTEz
NThiNDc2YjExZAo+IAo+IEFsbCBiZWluZyB3ZWxsIHRoaXMgbWVhbnMgdGhhdCBpdCB3aWxsIGJl
IGludGVncmF0ZWQgaW50byB0aGUgbGludXgtbmV4dAo+IHRyZWUgKHVzdWFsbHkgc29tZXRpbWUg
aW4gdGhlIG5leHQgMjQgaG91cnMpIGFuZCBzZW50IHRvIExpbnVzIGR1cmluZwo+IHRoZSBuZXh0
IG1lcmdlIHdpbmRvdyAob3Igc29vbmVyIGlmIGl0IGlzIGEgYnVnIGZpeCksIGhvd2V2ZXIgaWYK
PiBwcm9ibGVtcyBhcmUgZGlzY292ZXJlZCB0aGVuIHRoZSBwYXRjaCBtYXkgYmUgZHJvcHBlZCBv
ciByZXZlcnRlZC4KPiAKPiBZb3UgbWF5IGdldCBmdXJ0aGVyIGUtbWFpbHMgcmVzdWx0aW5nIGZy
b20gYXV0b21hdGVkIG9yIG1hbnVhbCB0ZXN0aW5nCj4gYW5kIHJldmlldyBvZiB0aGUgdHJlZSwg
cGxlYXNlIGVuZ2FnZSB3aXRoIHBlb3BsZSByZXBvcnRpbmcgcHJvYmxlbXMgYW5kCj4gc2VuZCBm
b2xsb3d1cCBwYXRjaGVzIGFkZHJlc3NpbmcgYW55IGlzc3VlcyB0aGF0IGFyZSByZXBvcnRlZCBp
ZiBuZWVkZWQuCj4gCj4gSWYgYW55IHVwZGF0ZXMgYXJlIHJlcXVpcmVkIG9yIHlvdSBhcmUgc3Vi
bWl0dGluZyBmdXJ0aGVyIGNoYW5nZXMgdGhleQo+IHNob3VsZCBiZSBzZW50IGFzIGluY3JlbWVu
dGFsIHVwZGF0ZXMgYWdhaW5zdCBjdXJyZW50IGdpdCwgZXhpc3RpbmcKPiBwYXRjaGVzIHdpbGwg
bm90IGJlIHJlcGxhY2VkLgo+IAo+IFBsZWFzZSBhZGQgYW55IHJlbGV2YW50IGxpc3RzIGFuZCBt
YWludGFpbmVycyB0byB0aGUgQ0NzIHdoZW4gcmVwbHlpbmcKPiB0byB0aGlzIG1haWwuCj4gCj4g
VGhhbmtzLAo+IE1hcmsKCkkndmUgZmluYWxseSBtYW5hZ2VkIHRvIHB1Ymxpc2ggYSBibG9nIHBv
c3QgYWJvdXQgdGhpcyBqb3VybmV5IGludG8gcmVndWxhdG9yIGxhbmQ7IEkgaG9wZSB5b3UgZmlu
ZCBpdCB3b3J0aHdoaWxlLgpodHRwczovL2tvaGxzY2h1ZXR0ZXIuZ2l0aHViLmlvL2Jsb2cvcG9z
dHMvMjAyMi8xMC8yOC9saW51eC1uYW5vcGktcjRzLwoKVGhhbmtzIHRvIGV2ZXJ5Ym9keSBpbnZv
bHZlZCBmb3IgZ2V0dGluZyB0aGlzIGZhciEKU3BlY2lhbCB0aGFua3MgZ28gdG8gUm9iaW4gTXVy
cGh5IGZvciBwdWxsaW5nIG91dCB0aGUgb3NjaWxsYXRvciwgYW5kIE1hcmsgQnJvd24gZm9yIGhl
bHBpbmcgdGhhdCB0aGVzZSBjaGFuZ2VzIGdldCBpbnRvIDYuMS4KCkJlc3QsCkNocmlzdGlhbgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
