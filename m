Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A52C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 18:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2phlhP0AlcI0SrRXNP1qRc4QAxmevL1fWDj+gV8gfk=; b=Vr2uD08Otft5yM
	5ITaTeXHAeA8GxFZON79ioas80OQLqW2p2mfOU2bMB1KxVlXg3Dmc2vvdTiX6Vz26h1uFDsv/dvj8
	9c23KiJiUl6JoUMyg+sRkx3MUXb2nfY1UoI5jynYzHxwwU0XVWhqJxPtZHBm0TxwMzc13MKVFt/yB
	yH0HEGt1yHN35twfflelFELVqxXGsOSanVJO+FO76EuSZF0Z4aJGh8Qz0UFsqHVNCK+PcwLhUKhoO
	mnT9fNPkMNdcVHFlMfiVHdSNd3KAwUggXRTKHT3wcD7mU/HBdfhjg1PxUebDj+R9dd6iZmAusjPZm
	F85zpFQhMCxmh0Qq50nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWit3-00Bp1P-Ej; Tue, 22 Mar 2022 18:05:41 +0000
Received: from mail-ej1-f44.google.com ([209.85.218.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWit0-00Bp0F-Ra; Tue, 22 Mar 2022 18:05:40 +0000
Received: by mail-ej1-f44.google.com with SMTP id qx21so37895739ejb.13;
 Tue, 22 Mar 2022 11:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xBJ03RbkQ2mzOlnG3ngY0wg3ZtIL080pq1pFXF62OoA=;
 b=oLdxrJJNWCOln0a2HkCgEdQ21vqwr2IVg/7P8w1BJ0MsyYtKwYYusNcIM8u+9foNtr
 N6PXtmLI67MPHbg3U9syVlD3irTAW22f1erVPuG2WVavtecRuzTH7N50sU3vYUQBxGa8
 foOspvPKFbF5XM+RJizunP86mZM78XRmRVSM+g7fOMmthlvtIM5S64qeQlUrQMaFREPh
 kG3QMu0T7cQX/lBvrkaaO/uU48oUOzRvTtEtQGX8SMWlh5XeCz8zBD02druFZKiFMW/R
 FSbGNsSHiI8W8/li/SFEcDNhVbWTrqItKaVI3z/hFyt4W7dimtl5fKONSn0MQde/ZL+5
 y83A==
X-Gm-Message-State: AOAM5316hmvdaNjqT45OZhfloEliwY1D+EFq98MUCH89/kUwKaMDTXlX
 NkxSdNPZet5Xpb93jFgqYYA=
X-Google-Smtp-Source: ABdhPJw95gsYqtTGMcuFCiiZW9xd9E4ovb6BYDBpZBwyDT/tkLLn/dlfwhpTxOwXJ2rYmpNaZ30hrA==
X-Received: by 2002:a17:906:36ce:b0:6d6:e540:ed65 with SMTP id
 b14-20020a17090636ce00b006d6e540ed65mr27061623ejc.330.1647972336954; 
 Tue, 22 Mar 2022 11:05:36 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.googlemail.com with ESMTPSA id
 z23-20020a170906435700b006b0e62bee84sm8599506ejm.115.2022.03.22.11.05.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Mar 2022 11:05:36 -0700 (PDT)
Message-ID: <eb1b1702-5470-3e63-b0c6-70624c5c120b@kernel.org>
Date: Tue, 22 Mar 2022 19:05:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 21/26] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>, Rob Herring <robh@kernel.org>
Cc: sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-crypto@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org,
 herbert@gondor.apana.org.au, linux-clk@vger.kernel.org
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-22-clabbe@baylibre.com>
 <1647913851.207213.941032.nullmailer@robh.at.kernel.org>
 <YjmS5DE95xTuJMi7@Red>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <YjmS5DE95xTuJMi7@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_110538_929163_9F98A299 
X-CRM114-Status: GOOD (  15.19  )
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

T24gMjIvMDMvMjAyMiAxMDoxMiwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgTW9uLCBNYXIg
MjEsIDIwMjIgYXQgMDg6NTA6NTFQTSAtMDUwMCwgUm9iIEhlcnJpbmcgYSDDqWNyaXQgOgo+PiBP
biBNb24sIDIxIE1hciAyMDIyIDIwOjA3OjM0ICswMDAwLCBDb3JlbnRpbiBMYWJiZSB3cm90ZToK
Pj4+IENvbnZlcnQgcm9ja2NoaXAtY3J5cHRvIHRvIHlhbWwKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlQGJheWxpYnJlLmNvbT4KPj4+IC0tLQo+Pj4gIC4uLi9j
cnlwdG8vcm9ja2NoaXAscmszMjg4LWNyeXB0by55YW1sICAgICAgICB8IDg0ICsrKysrKysrKysr
KysrKysrKysKPj4+ICAuLi4vYmluZGluZ3MvY3J5cHRvL3JvY2tjaGlwLWNyeXB0by50eHQgICAg
ICAgfCAyOCAtLS0tLS0tCj4+PiAgMiBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25zKCspLCAy
OCBkZWxldGlvbnMoLSkKPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2NyeXB0by9yb2NrY2hpcCxyazMyODgtY3J5cHRvLnlhbWwKPj4+ICBk
ZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0
by9yb2NrY2hpcC1jcnlwdG8udHh0Cj4+Pgo+Pgo+PiBSdW5uaW5nICdtYWtlIGR0YnNfY2hlY2sn
IHdpdGggdGhlIHNjaGVtYSBpbiB0aGlzIHBhdGNoIGdpdmVzIHRoZQo+PiBmb2xsb3dpbmcgd2Fy
bmluZ3MuIENvbnNpZGVyIGlmIHRoZXkgYXJlIGV4cGVjdGVkIG9yIHRoZSBzY2hlbWEgaXMKPj4g
aW5jb3JyZWN0LiBUaGVzZSBtYXkgbm90IGJlIG5ldyB3YXJuaW5ncy4KPj4KPj4gTm90ZSB0aGF0
IGl0IGlzIG5vdCB5ZXQgYSByZXF1aXJlbWVudCB0byBoYXZlIDAgd2FybmluZ3MgZm9yIGR0YnNf
Y2hlY2suCj4+IFRoaXMgd2lsbCBjaGFuZ2UgaW4gdGhlIGZ1dHVyZS4KPj4KPj4gRnVsbCBsb2cg
aXMgYXZhaWxhYmxlIGhlcmU6IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTYw
Nzg4Nwo+Pgo+Pgo+PiBjeXB0by1jb250cm9sbGVyQGZmOGEwMDAwOiAncmVzZXQtbmFtZXMnIGRv
ZXMgbm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwo+PiAJYXJj
aC9hcm0vYm9vdC9kdHMvcmszMjg4LWV2Yi1hY3Q4ODQ2LmR0LnlhbWwKPj4gCWFyY2gvYXJtL2Jv
b3QvZHRzL3JrMzI4OC1ldmItcms4MDguZHQueWFtbAo+PiAJYXJjaC9hcm0vYm9vdC9kdHMvcmsz
Mjg4LWZpcmVmbHktYmV0YS5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMyODgtZmly
ZWZseS5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMyODgtZmlyZWZseS1yZWxvYWQu
ZHQueWFtbAo+PiAJYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LW1pcWkuZHQueWFtbAo+PiAJYXJj
aC9hcm0vYm9vdC9kdHMvcmszMjg4LXBoeWNvcmUtcmRrLmR0LnlhbWwKPj4gCWFyY2gvYXJtL2Jv
b3QvZHRzL3JrMzI4OC1wb3BtZXRhbC5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMy
ODgtcjg5LmR0LnlhbWwKPj4gCWFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1yb2NrMi1zcXVhcmUu
ZHQueWFtbAo+PiAJYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXJvY2stcGktbjguZHQueWFtbAo+
PiAJYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXRpbmtlci5kdC55YW1sCj4+IAlhcmNoL2FybS9i
b290L2R0cy9yazMyODgtdGlua2VyLXMuZHQueWFtbAo+PiAJYXJjaC9hcm0vYm9vdC9kdHMvcmsz
Mjg4LXZleXJvbi1icmFpbi5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5
cm9uLWZpZXZlbC5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLWph
cS5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLWplcnJ5LmR0Lnlh
bWwKPj4gCWFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0LnlhbWwKPj4g
CWFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlnaHR5LmR0LnlhbWwKPj4gCWFyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlubmllLmR0LnlhbWwKPj4gCWFyY2gvYXJtL2Jv
b3QvZHRzL3JrMzI4OC12ZXlyb24tcGlua3kuZHQueWFtbAo+PiAJYXJjaC9hcm0vYm9vdC9kdHMv
cmszMjg4LXZleXJvbi1zcGVlZHkuZHQueWFtbAo+PiAJYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LXZleXJvbi10aWdlci5kdC55YW1sCj4+IAlhcmNoL2FybS9ib290L2R0cy9yazMyODgtdnlhc2Eu
ZHQueWFtbAo+Pgo+IAo+IEhlbGxvCj4gCj4gVGhpcyBzaG91bGQgbm90IGhhcHBlbiBzaW5jZSBw
YXRjaCAyMCByZW1vdmUgaXQuCgoKRnJvbSBhbGwgRFRCUyBpbiB0aGUgd29ybGQ/IElmIHlvdSB3
YW50IHRvIGRlcHJlY2F0ZSBhIHByb3BlcnR5LCBhZGQgYQoiZGVwcmVjYXRlZDogdHJ1ZSIuCgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
