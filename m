Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0639EC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jun 2022 06:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSJgeu5f6rKJ5NvSVRbnsuBIOJJ54/5QbYOGbdYxtfQ=; b=cwo1v7mu4xTviB
	Ai5goAFTt3uEFEvqclhqN+ziPZZKSZGNSbOd2H3RDh6AA6MU2tI9CT//ood6UghMpdA/eqhhRcKsO
	tNVpLtEY5t8UGvmXZReOly6pHLzoWz5EAHp8aLxsUtQ0x8w6+JgimuyZFKpd6Vipr8WOM4Z0cWjXS
	gCoFzgmJxyUO9KtTpiLTy/5xOi9maZdGyk9WuGRZ1Mwza2TSX2nXPjQt2+qL5RsFWzxQxYI8QJxvc
	2gr5lA647GK+Z09FiOuhtfvfbYzpXmQ87o4Sdub1ZuT5rGILkGXvt/wOXGIE5YPLFqWyRUF0QKma+
	XhefrrGFd/OFuiGNjPqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5iVg-00G9zm-Es; Mon, 27 Jun 2022 06:46:12 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5iVc-00G9x5-UE
	for linux-rockchip@lists.infradead.org; Mon, 27 Jun 2022 06:46:10 +0000
Received: by mail-ej1-x632.google.com with SMTP id cw10so17033367ejb.3
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jun 2022 23:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ADBX8pzB7I4NVaAI/SWhyMsSxZmAZE/UmxR90sSNn3w=;
        b=PuvvswSYGXHqs6gwAEwQpzWBAPQ0IpC9CnKE5r81hf2Si6B5l5738Css0MpGyYsoCx
         hVygkdwfayTMifPN5OMvV40xwI4c5U/8apZQh2diqpRWr+2JHmenjtU2P2MJOEvLBeAS
         hPtZZB44xXiRi1K6OC8FOgn8tib49180cgozu//0nBp6q95byr+poBjwAkPht8kk4TQv
         RN+ddVIdoLUxNcgt8dImlfoJhB5RgpIpQKSP+Lp22zzvjV6ouIK1dQD2O8cxy1N8v/Yh
         bbWsQONEmY63t9fX/VvPRqaouz5zHYKDbs5L9kHLA0OWS80v2IdsnymDUAqZAHXDAiCb
         dXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ADBX8pzB7I4NVaAI/SWhyMsSxZmAZE/UmxR90sSNn3w=;
        b=sATDqxSDbpFMhin8XL1H7SyJQARkR2CzfvNHoHhvdQW926WKXsRaP2oRYFQdsui2sm
         zHojsJJtCI8k9OY4qJRMqr11ix8Xz6YOoC9CbvTSoXFw8cd/YeHA65UOHB2AmnI+anHU
         QK0SNeQVzUZ5LHs/eP/8I0Dp7XrNjgzeqNdGjdbxsP0q9g+iPErt+z2KYCvxOEu6+WHe
         xNvemLELfxtGW56MqtWlhCHwQnsKx4S4EvTLA/LU5VCL4BhKQzdan52iB2mQTiu0VvP4
         Z8j2s2sxqE1Vl3ZgKRBnCij17RFvjRATr/ZLM3L7GjcWZgy01G6Uwhs4bqKqqqZ6g+fo
         9WsA==
X-Gm-Message-State: AJIora8dFxi53ZClSqXGb5g4ZW7iXd0AtYeT4hQmpZ/b+RgwvuCkuhcW
	OXf56zSZcTBe+S5gcG0MAgAigA==
X-Google-Smtp-Source: AGRyM1vTDdRRHIDDxqaXUnByiIT8mDOmWurINlYJm6kz/6G9IyK97xle0oFuXHZrrn/3ao5xz2XK2w==
X-Received: by 2002:a17:907:7678:b0:726:9fca:8106 with SMTP id kk24-20020a170907767800b007269fca8106mr4586490ejc.640.1656312367106;
        Sun, 26 Jun 2022 23:46:07 -0700 (PDT)
Received: from [192.168.0.246] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jw14-20020a170906e94e00b007263481a43fsm4305504ejb.81.2022.06.26.23.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 23:46:06 -0700 (PDT)
Message-ID: <97bb42c0-725f-3611-ff3f-0c7344aa0a00@linaro.org>
Date: Mon, 27 Jun 2022 08:46:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/5] dt-binding: clock: Document rockchip,rk3588-cru
 bindings
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 kernel@collabora.com
References: <20220623160329.239501-1-sebastian.reichel@collabora.com>
 <20220623160329.239501-2-sebastian.reichel@collabora.com>
 <0841741a-22f6-40f6-c745-6065dfdbcb1d@linaro.org> <8081469.T7Z3S40VBb@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8081469.T7Z3S40VBb@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_234609_053207_ABA5BECC 
X-CRM114-Status: GOOD (  32.01  )
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

T24gMjcvMDYvMjAyMiAwODoxNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgS3J6eXN6dG9m
LAo+IAo+IEFtIFNvbm50YWcsIDI2LiBKdW5pIDIwMjIsIDIyOjI3OjQxIENFU1Qgc2NocmllYiBL
cnp5c3p0b2YgS296bG93c2tpOgo+Pj4gKyNkZWZpbmUgUExMX1YwUExMCQkJNAo+Pj4gKyNkZWZp
bmUgUExMX0FVUExMCQkJNQo+Pj4gKyNkZWZpbmUgUExMX0NQTEwJCQk2Cj4+PiArI2RlZmluZSBQ
TExfR1BMTAkJCTcKPj4+ICsjZGVmaW5lIFBMTF9OUExMCQkJOAo+Pj4gKyNkZWZpbmUgUExMX1BQ
TEwJCQk5Cj4+PiArI2RlZmluZSBBUk1DTEtfTAkJCTEwCj4+PiArI2RlZmluZSBBUk1DTEtfQjAx
CQkJMTEKPj4+ICsjZGVmaW5lIEFSTUNMS19CMjMJCQkxMgo+Pj4gKwo+Pj4gKy8qIGNydSBjbG9j
a3MgKi8KPj4+ICsjZGVmaW5lIFBDTEtfQklHQ09SRTBfUk9PVAkJMjAKPj4KPj4gVGhlc2UgYXJl
IGFic3RyYWN0IElEcywgbm90IHJlZ2lzdGVyIG9mZnNldHMsIHNvIG5vIGhvbGVzLCBpbmNyZW1l
bnRlZAo+PiBieSBvbmUuCj4gCj4gSSBkbyBiZWxpZXZlIFJvY2tjaGlwIG5vd2FkYXlzIGNyZWF0
ZXMgdGhlc2UgYXV0b21hdGljYWxseSBmcm9tIHNvYyBkZXNpZ24tCj4gZG9jdW1lbnRzLiBJJ3Zl
IGxvb2tlZCB1cCB0aGUgdGhyZWFkIGluIFswXSBhcyB0aGlzIHNlZW1zIHRvIGhhdmUgc3RhcnRl
ZAo+IHdpdGggdGhlIHJrMzU2OC4KPiAKPiBTbyB0aGVzZSBhcmUgaW4gZmFjdCBub3QgY3JlYXRl
ZCBhcyBhYnN0cmFjdCBJRHMsIGJ1dCBhcmUgcGFydCBvZiB0aGUgU29Dcwo+IG1hbnVhbC4KPiAK
PiBbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2I2NjM5OTRkLTg1M2ItNDQ3NC1iZDc3
LWE0NDQzMTdiZmZmYkByb2NrLWNoaXBzLmNvbS8KCk5vdGhpbmcgc3RvcHMgUm9ja2NoaXAgdG8g
Y2hhbmdlIHRoZSB0b29scyB0byBnZW5lcmF0ZSBpbmNyZW1lbnRhbCBJRHMKd2l0aG91dCBob2xl
cywgcmlnaHQ/Cgo+IAo+IAo+Pj4gKyNkZWZpbmUgUENMS19CSUdDT1JFMF9QVlRNCQkyMQo+Pj4g
KyNkZWZpbmUgUENMS19CSUdDT1JFMV9ST09UCQkyMgo+Pj4gKyNkZWZpbmUgUENMS19CSUdDT1JF
MV9QVlRNCQkyMwo+IAo+IFsuLi5dCj4gCj4+PiArCj4+PiArI2RlZmluZSBDTEtfTlJfQ0xLUwkJ
CShIQ0xLX1NESU9fUFJFICsgMSkKPj4+ICsKPj4+ICsvKioqKioqKipOYW1lPVNPRlRSU1RfQ09O
MDEsT2Zmc2V0PTB4QTA0KioqKioqKiovCj4+PiArI2RlZmluZSBTUlNUX0FfVE9QX0JJVQkJCTE5
Cj4+Cj4+IFdoYXQgYXJlIGFsbCB0aGVzZT8gQmluZGluZ3Mgc2hvdWxkIG5vdCBzdG9yZSByZWdp
c3RlciB2YWx1ZXMgb3Igb2Zmc2V0cy4KPj4KPj4gQWxzbywgcmVzZXRzIGdvIHRvIHNlcGFyYXRl
IGhlYWRlci4KPiAKPiBJIHRoaW5rIHRoZSBjb21tZW50cyBhcmUgbWlzbGVhZGluZywgdGhlc2Ug
YXJlIG5vdCByZWdpc3RlciBvZmZzZXRzLgo+IAo+IFdoaWNoIGluIHR1cm4gaXMgYSBzZXQgb2Yg
cmVnaXN0ZXJzIFNPRlRSU1RfQ09OMCwgZXRjIGNvbnRhaW5pbmcgdGhlCj4gYml0cyB3aGljaCB0
byB0b2dnbGUgdG8gc29mdC1yZXNldCBpbmRpdmlkdWFsIGJsb2NrcyBvZiB0aGUgU29DLgoKU28g
dGhlc2UgYXJlIElEcyB1c2VkIGJ5IHRoZSBkcml2ZXIsIG5vdCBoYXJkd2FyZT8gVGhlbiB0aGV5
IGNhbiBiZSBhcwpJRHMgYXMgd2VsbCwgZG9uJ3QgdGhleT8KCj4gVGhlIENSVSAoY2xvY2stYW5k
LXJlc2V0LXVuaXQpIGFsd2F5cyBhbHNvIGNvbnRhaW5zIHRoZSBzb2Z0cmVzZXQgYmxvY2ssCj4g
c28gdGhleSBoYXZlIGFsd2F5cyBiZWVuIHBhcnQgb2YgdGhlIGNydSBkdCBiaW5kaW5nIGFzIHdl
bGwuCgpTZXBhcmF0ZSBoZWFkZXIgdW5kZXIgcmVzZXQgd291bGQgc3RpbGwgYmUgcGFydCBvZiB0
aGUgQ1JVIERUIGJpbmRpbmcgLQpJIGRpZCBub3QgcHJvcG9zZSBjaGFuZ2UgdGhhdC4gSG93ZXZl
ciB3aHkgc3RvcmluZyByZXNldCBJRHMgaW4gYSBjbG9jawpzdWJzeXN0ZW0gYmluZGluZyBoZWFk
ZXIsIGluc3RlYWQgb2YgcmVzZXQgc3Vic3lzdGVtPwoKPiAKPiAKPj4+ICsjZGVmaW5lIFNSU1Rf
UF9UT1BfQklVCQkJMjAKPj4+ICsjZGVmaW5lIFNSU1RfUF9DU0lQSFkwCQkJMjIKPj4+ICsjZGVm
aW5lIFNSU1RfQ1NJUEhZMAkJCTIzCj4+PiArI2RlZmluZSBTUlNUX1BfQ1NJUEhZMQkJCTI0Cj4+
PiArI2RlZmluZSBTUlNUX0NTSVBIWTEJCQkyNQo+Pj4gKyNkZWZpbmUgU1JTVF9BX1RPUF9NNTAw
X0JJVQkJMzEKPj4KPj4gTm8gaG9sZXMsIGJ1dCBhYnN0cmFjdCBJRHMgaW5jcmVtZW50ZWQgZnJv
bSAwIG9yIDEuCj4gCj4gVGhlIElEcyBhcmUgbm90IGFic3RyYWN0IGJ1dCBpbnN0ZWFkIGRvIGRl
c2NyaWJlIHRoZSBsb2NhdGlvbiBvZgo+IHRoZSByZXNldCBiaXQgaW5zaWRlIHRoZSBzb2Z0LXJl
c2V0IHJlZ2lzdGVyIGJsb2NrLgo+IAo+IEZvciByZWZlcmVuY2Ugc2VlIGRyaXZlcnMvY2xrL3Jv
Y2tjaGlwL3NvZnRyc3QuYyBhbmQgaXRzCj4gCj4gCWludCBiYW5rID0gaWQgLyBzb2Z0cnN0LT5u
dW1fcGVyX3JlZzsKPiAJaW50IG9mZnNldCA9IGlkICUgc29mdHJzdC0+bnVtX3Blcl9yZWc7CgpT
byB0aGVzZSBhcmUgcmVnaXN0ZXIgb2Zmc2V0cywgYXMgSSBtZW50aW9uZWQgYmVmb3JlLiBCaW5k
aW5ncyBhcmUgbm90CmZvciB0aGlzLCB0aGlzIGlzIG5vdCB0aGUgcHVycG9zZSBvZiBiaW5kaW5n
IGhlYWRlcnMuIFlvdSBkbyBub3Qgc3RvcmUKYXMgYmluZGluZyBoZWFkZXJzIEdQSU8gbnVtYmVy
cywgSVJRIG51bWJlcnMsIGJsb2NrIHVuaXQgYWRkcmVzc2VzLApyaWdodD8gVGhlcmUgaXMgb25s
eSBvbmUgY2FzZSBzdWNoIG9mZnNldHMgbWFrZSBzZW5zZSAtIGZpcm13YXJlIGFsc28KdXNlcyB0
aGVtIGFuZCB5b3UgY2Fubm90IGNoYW5nZSBpdC4KClRoaXMgaXMgbm90IHRoZSBjYXNlIGhlcmUs
IHNvIHRoZXNlIHZhbHVlcyBzaG91bGQgbm90IGJlIGluIGJpbmRpbmdzLgoKVG8gY2xhcmlmeSAt
IEkgZG9uJ3QgYXNrIHlvdSB0byBjaGFuZ2UgdGhlIGRyaXZlciwgeW91IGNhbiBzdGlsbCBjb2Rl
Cm9mZnNldCBsaWtlIHRoYXQuIEp1c3QgZG9uJ3Qgc3RvcmUgdGhpcyBhcyBiaW5kaW5nLgoKPiAK
PiBBbmQgYXMgd2UncmUgZG9pbmcgdGhpcyBzaW5jZSAyMDEzIHRoaXMgd2F5LCBpbmNsdWRpbmcg
dGhlc2UgYmluZGluZ3MsCj4gSSBndWVzcyBpdCBjYW4ndCBiZSB0b28gd3JvbmcgOi0pCgpJIGd1
ZXNzIG5vIG9uZSByYWlzZWQgdGhlIHF1ZXN0aW9uLi4uCgo+IAo+IEFuZCB0aGV5J3JlIHByb2Jh
Ymx5IGFsc28gZG9uZSB2aWEgdG9vbGluZy4KPiAKPiAKPiAKPj4+ICsvKioqKioqKipOYW1lPVBI
UFRPUFNPRlRSU1RfQ09OMCxPZmZzZXQ9MHg4QTAwKioqKioqKiovCj4+PiArI2RlZmluZSBTUlNU
X1BfUEhQVE9QX0NSVQkJMTMxMDczCj4+PiArI2RlZmluZSBTUlNUX1BfUENJRTJfR1JGMAkJMTMx
MDc0Cj4+PiArI2RlZmluZSBTUlNUX1BfUENJRTJfR1JGMQkJMTMxMDc1Cj4+PiArI2RlZmluZSBT
UlNUX1BfUENJRTJfR1JGMgkJMTMxMDc2Cj4+PiArI2RlZmluZSBTUlNUX1BfUENJRTJfUEhZMAkJ
MTMxMDc3Cj4+PiArI2RlZmluZSBTUlNUX1BfUENJRTJfUEhZMQkJMTMxMDc4Cj4+PiArI2RlZmlu
ZSBTUlNUX1BfUENJRTJfUEhZMgkJMTMxMDc5Cj4+PiArI2RlZmluZSBTUlNUX1BfUENJRTNfUEhZ
CQkxMzEwODAKPj4+ICsjZGVmaW5lIFNSU1RfUF9BUEIyQVNCX1NMVl9DSElQX1RPUAkxMzEwODEK
Pj4+ICsjZGVmaW5lIFNSU1RfUENJRTMwX1BIWQkJCTEzMTA4Mgo+Pj4gKwo+Pj4gKy8qKioqKioq
Kk5hbWU9UE1VMVNPRlRSU1RfQ09OMDAsT2Zmc2V0PTB4MzBBMDAqKioqKioqKi8KPj4+ICsjZGVm
aW5lIFNSU1RfSF9QTVUxX0JJVQkJCTc4NjQ0Mgo+Pj4gKyNkZWZpbmUgU1JTVF9QX1BNVTFfQklV
CQkJNzg2NDQzCj4+Cj4+Cj4+IFRoZSBudW1iZXJpbmcgaXMgZ2V0dGluZyBxdWl0ZSB1bnVzdWFs
Li4uIEFzIHRoZSB2YWx1ZSBpcyBub3QgdXNlZCBieQo+PiB0aGUgZHJpdmVyLCBpdCBzdWdnZXN0
cyBpdCBpcyBzb21lIHJlZ2lzdGVyIG9mZnNldCBvciB2YWx1ZSwgd2hpY2ggYXJlCj4+IG5vdCBz
dWl0YWJsZSBmb3IgdGhlIGJpbmRpbmdzLgo+IAo+IHNlZSBhYm92ZSwgaXQgaXMgdXNlZCBieSB0
aGUgZHJpdmVyLiBUaG91Z2ggaXQncyBzdGlsbCB2ZXJ5IG11Y2ggdW51c3VhbC4KPiAKPiBMb29r
aW5nIGF0IHRoZSByZWdpc3RlciBvZmZzZXRzIG1lbnRpb25lZCBpbiB0aGUgY29tbWVudHMsIHRo
ZQo+IG1haW4gYmxvY2sgaGFuZGxpbmcgc29mdHJlc2V0LWlkcyBzdGFydHMgYXQgMHhBMDQgaW4g
dGhlIGNsb2NrIGNvbnRyb2xsZXIuCj4gCj4gQW5kIGhpc3RvcmljYWxseSB0aGUgc29mdC1yZXNl
dCBibG9jayBoYXMgYmVlbiBhIGNvbXBhY3Qgc2V0IG9mIHJlZ2lzdGVycwo+IGluc2lkZSB0aGUg
ZGV2aWNlLCB0aG91Z2ggdGhpcyB0aW1lIGl0IHNlZW1zIHNvbWVvbmUgdGFja2VkIHNvbWUgbW9y
ZQo+IHJlZ2lzdGVycyBpbnRvIHRoZSBDUlUgZmFyIGJlaGluZCBldmVyeXRoaW5nIGVsc2UgKDB4
OEEwMCBhbmQgMHgzMGEwMCkuCj4gCj4gU28gdGhlIElEcyBhcmUgaW4tbGluZSB3aXRoIHRoZSBo
b3cgd2UgaGFuZGxlIHJlc2V0LWlkcyBjdXJyZW50bHksIGJ1dAo+IEknbSBzb21ld2hhdCB1bmRl
Y2lkZWQgaWYgdGhpcyBjb3VudHMgYXMgbW9yZSBvZiBhIGhhY2suCgpUaGVzZSBhcmUgbm90IElE
cyBidXQgcmVnaXN0ZXIgb2Zmc2V0cy4gWW91IGRvIG5vdCB1c2UgdGhlbSBpbiBhIG1lYW5pbmcK
b2YgSUQuIElEIGlzIGEgYWJzdHJhY3QgbnVtYmVyIHByb3ZpZGluZyBhIG1hcHBpbmcgYmV0d2Vl
biB0aGlzIGFic3RyYWN0Cm51bWJlciBhbmQgYWN0dWFsIHZhbHVlLiBZb3UgZG8gbm90IGhhdmUg
bWFwcGluZyBoZXJlIC0geW91IGRpcmVjdGx5CmRlY29kZSB0aGlzIElELgoKQmVzdCByZWdhcmRz
LApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
