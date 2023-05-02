Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8692BC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 23:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiQqARuHO2l4+2Jir7eCyAmFSW65zukCwoqd9IVrdAM=; b=QH5AYvzpBJsPvo
	ayMUMHTbopVayCgHRm7AAIfTMX5p+Vv7rdUl073iIAc/zpLVufIGk0sUNgc44k1Dhp346bNZmoqMq
	2/4hsNoujQ/aCYuCteDjt2CgS0NBMy6bbdnwOvwLCL/mKnPuOCRGuknN4zix6FsMEHXbGuw1urt2V
	Xm1/3qmKvKwnAvTrD0NUtZKxc9v2g2BuC1bPXN/CDfPYcmuCcT1cSe8wj20zUy9rxhM1rmH/25Qix
	b8R/gW+NemnDX0BSB5wFYS5B40ezfKh200mqWYv+7HsEbB/fFvtDxztFQ6NR6bKfE6o9jM2pKv+hc
	iIiob5vgD1HlWUpAtVcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptz1M-002qRc-0r;
	Tue, 02 May 2023 23:02:56 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptz1E-002qPH-1A;
	Tue, 02 May 2023 23:02:51 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7515631b965so46537685a.0;
        Tue, 02 May 2023 16:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683068567; x=1685660567;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RVUCe/5y2Ex7bNIQOvHne7x9R8A0wELwbdEse2WDpF8=;
        b=iHBlY9kIRMOF3Yq8hT/HYtLwTwjoof0FVfaEhNjRSWPoYgoA1qtRUzGwD+nkjOzJPI
         u09FXpbJrjxtM3MFyzM74JfHNsb7UZ0GJze/A7Ip/HD+5roEWeYmZwjlYu0a2cdkfbwf
         +kLbPvAmDmxad5KujOjWnyiCW+W4okHTLQRqn4fLYSw7t/qXPwhwMm5mWSJxb8hi+d0O
         ev3gtx0+XlazA6w82yl+mnLoL1jpad70ZxSgOz1YQXa9W1BLk0lheCYSgecLnoqpXxAH
         /k0Y7rMrxmhfNEQZTdJyCemWb5DMYD7STFJO05Jiqj2/50xWs6TXP7C2X1ywzoueu5sn
         IGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683068567; x=1685660567;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RVUCe/5y2Ex7bNIQOvHne7x9R8A0wELwbdEse2WDpF8=;
        b=h8vGgYOsVBnljhYkgYd5rmn31TSUCZnzfOzIeQoZxygXWSByCOPbkBTH4cJ1mQsqvs
         jR2FdQk37WdGjC77VqFFxu9IcOFC+JnZN/S7kduRzn8nKBUgaCszbKQGKDQalWpeyAx6
         RrpBg9/2sLU4AGkLnM4W+LDZaNx+UQSuVXIrhO1AqRrPsd7aj4JdlxBFH/MkVOHWIzG0
         lN0mM2ftbmPpoyEbQ1A8VVvaz1nsTLqT12THT1+IzaLHpuO9hX8GVJcJAjINrTENLRkt
         R7YH8e+TG4cMDo8s4kMGCl0xymy1q1Uew2kiaVREX2ztxwrmjmzcy1zf5C2F2L/lUOMm
         n1wg==
X-Gm-Message-State: AC+VfDwb0dflP30VAqt+9pnt5PwcoCT+CA5HuY7oMjwgB8LW5G/dFKKL
	2K00kiMrPe+hu3lrdqPVc6E=
X-Google-Smtp-Source: ACHHUZ4eSB1jw2dhw1LAIzPe/MR5kdc4AoCnBVEG18379hjnfMdu0BtdA7D5r0jmXaGKb3nbIbuwpA==
X-Received: by 2002:a05:6214:d64:b0:61a:96d3:bd20 with SMTP id 4-20020a0562140d6400b0061a96d3bd20mr380920qvs.10.1683068566677;
        Tue, 02 May 2023 16:02:46 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id t18-20020a0cea32000000b0061b71220644sm326246qvp.19.2023.05.02.16.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 16:02:45 -0700 (PDT)
Message-ID: <d4b52074-d11c-4c7a-ad74-b2fce64c6d30@gmail.com>
Date: Tue, 2 May 2023 16:02:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson
 <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_160248_445605_2988CCEB 
X-CRM114-Status: GOOD (  26.35  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNS8yLzIzIDEyOjQwLCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBUdWUsIE1heSAyLCAyMDIz
IGF0IDM6MTXigK9BTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiB3cm90ZToKPj4KPj4g
T24gVHVlLCBBcHIgMjUsIDIwMjMsIGF0IDE3OjU3LCBSb2IgSGVycmluZyB3cm90ZToKPj4+IE9u
IFR1ZSwgQXByIDI1LCAyMDIzIGF0IDI6MjjigK9BTSBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0
QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPj4+Cj4+Pj4gRG9lcyB5b3VyIHNjcmlwdCBhbHNvIGNh
dGVyIGZvciAuZHRzIGZpbGVzIG5vdCBtYXRjaGluZyBhbnkgcGF0dGVybiwKPj4+PiBidXQgaW5j
bHVkaW5nIGEgLmR0c2kgZmlsZSB0aGF0IGRvZXMgbWF0Y2ggYSBwYXR0ZXJuPwo+Pj4KPj4+IEkg
YXNzdW1lIEkgYnVpbHQgZXZlcnl0aGluZyBhZnRlciBtb3ZpbmcsIGJ1dCBtYXliZSBub3QuLi4K
Pj4+Cj4+PiBUaGF0J3MgYWxsIGp1c3QgImRldGFpbHMiLiBGaXJzdCwgd2UgbmVlZCBhZ3JlZW1l
bnQgb24gYSkgbW92aW5nCj4+PiB0aGluZ3MgdG8gc3ViZGlycyBhbmQgYikgZG9pbmcgaXQgMS1i
eS0xIG9yIGFsbCBhdCBvbmNlLiBTbyBmYXIgd2UndmUKPj4+IGJlZW4gc3R1Y2sgb24gYSkgZm9y
IGJlaW5nICd0b28gbXVjaCBjaHVybicuCj4+Cj4+IFNvcnJ5IGZvciBtaXNzaW5nIG1vc3Qgb2Yg
dGhlIGRpc2N1c3Npb24gbGFzdCB3ZWVrLiBUaGUgc2NyaXB0IHNvdW5kcwo+PiBmaW5lIHRvIG1l
LCB0aGUgb25seSByZWFzb24gSSBkaWRuJ3Qgd2FudCB0byBkbyB0aGlzIGluIHRoZSBwYXN0IGlz
IHRoYXQKPj4gd2UgaGFkIHRoZSBwbGFuIHRvIG1vdmUgcGxhdGZvcm1zIG91dCBvZiB0aGUga2Vy
bmVsIHRyZWUgdG8gYW4gZXh0ZXJuYWwKPj4gcmVwb3NpdG9yeSBhbmQgSSB3YW50ZWQgdG8gZG8g
dGhpcyBwbGF0Zm9ybSBhdCBhIHRpbWUgYW5kIGFsc28gb25seSBtb3ZlCj4+IGVhY2ggb25lIG9u
Y2UuIEkgZG9uJ3QgdGhpbmsgdGhhdCBpcyBnb2luZyB0byBoYXBwZW4gYW55dGltZSBzb29uIG5v
dywKPj4gc28gbGV0J3MganVzdCBkbyB5b3VyIHNjcmlwdC4KPj4KPj4gQ2FuIHlvdSBzZW5kIG1l
IHRoZSBzY3JpcHQgYW5kL29yIGEgcHVsbCByZXF1ZXN0IG9mIHRoZSByZXN1bHRpbmcKPj4gdHJl
ZSBiYXNlZCBvbiBteSBzb2MvZHQgYnJhbmNoPyBFdmVyeXRoaW5nIGlzIG1lcmdlZCB1cHN0cmVh
bSwKPj4gYW5kIEkgdGhpbmsgZ2l0LW1lcmdlIHdvdWxkIGhhbmRsZSB0aGUgcmVtYWluaW5nIG1l
cmdlcyB3aXRoIGFueQo+PiBvdGhlciBjaGFuZ2VzIGluIG1haW5saW5lLgo+IAo+IEkndmUgZHVz
dGVkIG9mZiBteSBzY3JpcHQgYW5kIG1hZGUgYSBicmFuY2hbMV0gd2l0aCB0aGUgcmVzdWx0Lgo+
IFRoZXJlJ3MganVzdCBhIGNvdXBsZSBvZiBmaXhlcyBuZWVkZWQgYWZ0ZXIgdGhlIHNjcmlwdCBp
cyBydW4gKHNlZSB0aGUKPiB0b3AgY29tbWl0KS4gVGhlIGNyb3NzIGFyY2ggaW5jbHVkZXMgYXJl
IGFsbCBmaXhlZCB1cCBieSB0aGUgc2NyaXB0Lgo+IGR0YnNfaW5zdGFsbCBtYWludGFpbnMgYSBm
bGF0IGluc3RhbGwuIEkgY29tcGFyZWQgdGhlIG51bWJlciBvZiAuZHRicwo+IGJlZm9yZSBhbmQg
YWZ0ZXIgdG8gY2hlY2sgdGhlIHNjcmlwdC4KPiAKPiBJIHRoaW5rIHRoZSBvbmx5IGlzc3VlIHJl
bWFpbmluZyBpcyBmaW5hbGl6aW5nIHRoZSBtYXBwaW5nIG9mCj4gcGxhdGZvcm1zIHRvIHN1YmRp
cnMuIFdoYXQgSSBoYXZlIGN1cnJlbnRseSBpcyBhIG1peHR1cmUgb2YgU29DCj4gZmFtaWxpZXMg
YW5kIHZlbmRvcnMuIFRoZSBtb3N0IG5vdGFibGUgYXJlIGFsbCB0aGUgRnJlZXNjYWxlL05YUAo+
IHBsYXRmb3JtcywgcHhhLCBzb2NmcGdhLCBhbmQgc3RtMzIuIEl0J3Mgbm90IGNvbnNpc3RlbnQg
d2l0aCBhcm02NAo+IGVpdGhlci4gT25jZSB0aGF0J3MgZmluYWxpemVkLCBJIHN0aWxsIG5lZWQg
dG8gZ28gdXBkYXRlIE1BSU5UQUlORVJTLgo+IAo+IEhlcmUncyB0aGUgY3VycmVudCBtYXBwaW5n
Ogo+IAo+IHZlbmRvcl9tYXAgPSB7Cj4gICAgICAnYWxwaGFzY2FsZScgOiAnYWxwaGFzY2FsZScs
Cj4gICAgICAnYWxwaW5lJyA6ICdhbHBpbmUnLAo+ICAgICAgJ2FydHBlYycgOiAnYXhpcycsCj4g
ICAgICAnYXhtJyA6ICdsc2knLAo+ICAgICAgJ2N4OScgOiAnY254dCcsCj4gICAgICAnZWN4JyA6
ICdjYWx4ZWRhJywKPiAgICAgICdoaWdoYmFuaycgOiAnY2FseGVkYScsCj4gICAgICAnZXA3JyA6
ICdjaXJydXMnLAo+ICAgICAgJ214cyc6ICdteHMnLAo+ICAgICAgJ2lteDIzJzogJ214cycsCj4g
ICAgICAnaW14MjgnOiAnbXhzJywKPiAgICAgICdzdW4nIDogJ2FsbHdpbm5lcicsCj4gICAgICAn
aW14JzogJ2lteCcsCj4gICAgICAnZTYnIDogJ2lteCcsCj4gICAgICAnZTcnIDogJ2lteCcsCj4g
ICAgICAnbWJhNicgOiAnaW14JywKPiAgICAgICdscyc6ICdmc2wnLAo+ICAgICAgJ3ZmJzogJ2Zz
bCcsCj4gICAgICAncWNvbSc6ICdxY29tJywKPiAgICAgICdhbTMnIDogJ3RpJywKPiAgICAgICdh
bTQnIDogJ3RpJywKPiAgICAgICdhbTUnIDogJ3RpJywKPiAgICAgICdkcmEnIDogJ3RpJywKPiAg
ICAgICdrZXlzdG9uZScgOiAndGknLAo+ICAgICAgJ29tYXAnIDogJ3RpJywKPiAgICAgICdjb21w
dWxhYicgOiAndGknLAo+ICAgICAgJ2xvZ2ljcGQnIDogJ3RpJywKPiAgICAgICdlbHBpZGEnIDog
J3RpJywKPiAgICAgICdtb3Rvcm9sYScgOiAndGknLAo+ICAgICAgJ3R3bCcgOiAndGknLAo+ICAg
ICAgJ2RhJyA6ICd0aScsCj4gICAgICAnZG0nIDogJ3RpJywKPiAgICAgICduc3BpcmUnIDogJ25z
cGlyZScsCj4gICAgICAnYXJtYWRhJyA6ICdtYXJ2ZWxsJywKPiAgICAgICdkb3ZlJyA6ICdtYXJ2
ZWxsJywKPiAgICAgICdraXJrd29vZCcgOiAnbWFydmVsbCcsCj4gICAgICAnb3Jpb24nIDogJ21h
cnZlbGwnLAo+ICAgICAgJ212ZWJ1JyA6ICdtYXJ2ZWxsJywKPiAgICAgICdtbXAnIDogJ21hcnZl
bGwnLAo+ICAgICAgJ2JlcmxpbicgOiAnYmVybGluJywKPiAgICAgICdweGEyJyA6ICdweGEnLAo+
ICAgICAgJ3B4YTMnIDogJ3B4YScsCj4gICAgICAncHhhJyA6ICdtYXJ2ZWxsJywKPiAgICAgICdh
cm0tJyA6ICdhcm0nLAo+ICAgICAgJ2ludGVnJyA6ICdhcm0nLAo+ICAgICAgJ21wcycgOiAnYXJt
JywKPiAgICAgICd2ZScgOiAnYXJtJywKPiAgICAgICdhc3BlZWQnIDogJ2FzcGVlZCcsCj4gICAg
ICAnYXN0MicgOiAnYXNwZWVkJywKPiAgICAgICdmYWNlYm9vaycgOiAnYXNwZWVkJywKPiAgICAg
ICdpYm0nIDogJ2FzcGVlZCcsCj4gICAgICAnb3BlbmJtYycgOiAnYXNwZWVkJywKPiAgICAgICdl
bjcnIDogJ2Fpcm9oYScsCj4gICAgICAnYXQ5MScgOiAnbWljcm9jaGlwJywKPiAgICAgICdzYW1h
JyA6ICdtaWNyb2NoaXAnLAo+ICAgICAgJ3NhbTknIDogJ21pY3JvY2hpcCcsCj4gICAgICAndXNi
XycgOiAnbWljcm9jaGlwJywKPiAgICAgICd0bnlfJyA6ICdtaWNyb2NoaXAnLAo+ICAgICAgJ21w
YTE2MDAnIDogJ21pY3JvY2hpcCcsCj4gICAgICAnYW5pbWVvX2lwJyA6ICdtaWNyb2NoaXAnLAo+
ICAgICAgJ2Frcy1jZHUnIDogJ21pY3JvY2hpcCcsCj4gICAgICAnZXRoZXJudXQ1JyA6ICdtaWNy
b2NoaXAnLAo+ICAgICAgJ2V2ay1wcm8zJyA6ICdtaWNyb2NoaXAnLAo+ICAgICAgJ3BtOWc0NScg
OiAnbWljcm9jaGlwJywKPiAgICAgICdnZTg2JyA6ICdtaWNyb2NoaXAnLAo+ICAgICAgJ2JjbScg
OiAnYnJjbScsCgpIb3cgYWJvdXQgd2UgdXNlICdicm9hZGNvbScgaGVyZSwgdG8gZm9sbG93IHdo
YXQgYXJtNjQgZG9lcz8gSSBjb3VsZCAKcmVuYW1lIGFyY2gvbWlwcy9ib290L2R0cy9icmNtIHRv
IGFyY2gvbWlwcy9ib290L2R0cy9icm9hZGNvbSBmb3IgCmNvbnNpc3RlbmN5LCB0b28/Ci0tIApG
bG9yaWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
