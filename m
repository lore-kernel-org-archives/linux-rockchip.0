Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F5DAE77188
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 00:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/jMuX2n667ewKyx4UDSBrjKUS9fl9K9fsrDBNs4i+o=; b=v78Mso/hakYK/8
	d7c8Hb6xlm5ErO0rwvjzmWsnlr1H3N9Ot59pHEMjntGsFyAGWzW/33aNzuLWGvRcACYBGMYK14fFr
	D7jn5uNIfKs4eLggRDHliigFD3gPDNEbGlPnqUa3qViESfcrNpbV8YjJCgDDaHclUARXn57Lqx9b5
	PEiF7UX9/sm7xbuteQkVBIIf+tgHvu7ys1O8C4S2E2MC04i3FzIAQOLlVwqYfiFTFYkgq+OrB/End
	Ky6I1+Zol98dGmmcdXnXPzuyG05uI+r955i7tR2v5aWmjY6TB66nOZqgmpg6tE2Ll0LW2YXCmh94Z
	56n0nGekYVgExCvmSlxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTVQF-0000000BkPb-1ukB;
	Fri, 03 Jan 2025 00:20:15 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTVP4-0000000BkGv-1xVR;
	Fri, 03 Jan 2025 00:19:03 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso124756555e9.2;
        Thu, 02 Jan 2025 16:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735863540; x=1736468340; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=huSEKVbzBTMcqWXnTQrTDEYxm+6yBPzd064JJPMGrmA=;
        b=MbcQKnG3gHDaLqCZzpdIcRW3eAiHN/6HZpy0rUUpfuMQxxLi/v56UOZGhupebasbFt
         MJ5we+uNCClyMLLQCIzHN4DxaWYfVODS800lTIy+MjenWJUL3/RbGR7DlgbshFmGa6lO
         dD7DJhRl7kh0/jrHFuhEiWHybOk6aUhPwUGad0MMXM0H3fpS8MB+PMEpuBK3CUlHyHA/
         T3WAuWSxt6tp47Q2s0s9TLRf3OTypgrd3sakhuHxBNYwcJiHVOanQ3XagYLb1/yNbNUw
         DDYQJ1EeYHVySOzbPXxdbebEU3faORN1jQsxRD4PRcjt9pjhSm7+NJqFJC2RKqTx3zu+
         tyDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735863540; x=1736468340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=huSEKVbzBTMcqWXnTQrTDEYxm+6yBPzd064JJPMGrmA=;
        b=wlikGq6VlEjFand5l/c+BexBYozINgE0N8dutGBulmGJDvu7Th9UxCG0JDwZ2Srkwj
         1atq2h2uOyGR+b/T95TEqgiFhBKZn3CzQoBsYwe/B08rtOfxQqOpiZESzjXWYNcFG2W+
         051KpD/uiZskECPKw9GSqW9bnYCOeyNcBsX1oT9rRHm0V78WDVlf89TgTAqamtMqUKzE
         +VrIt1X7zL+zvI+0g15812m1m/jfN+StRvWrLsWZKhzchADwaFYShUIghTcCSyH+nrhn
         ftf4nFIYEV8+p9dg3en70/1rKFAReA6TLjOKNO9nakdSxn0ju0EeoNKrQMNKkqBEjZ4e
         98uA==
X-Forwarded-Encrypted: i=1; AJvYcCW/KkxDABzSEtHQ7guboh3S69W9sXl8XM87ZoWYuDG/e7WlmxUT19q1z9jVbvd7O5cpR9mz4NvFPJmizseR4UQ=@lists.infradead.org, AJvYcCXIeZ0THxHDL6jnjxh9YIlXHCW3FFH5MLhHXQ0lvb8HVFHlpMYbgz/NilEvYO8QL+AWmxTxAnaN0P6cAyMf0hRC@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1m7PsL9omSS+zN/Bd8BzUeWqZe2v0An8XbufpIcJYcDgB+c7k
	2A1HsK5PkyVzM/zACes6V12lVJVn0vGOdlNdB06uCbpy5pfE3B1yNaa1AjgbBWftfnafwrJ48Ix
	kIjtI7S0RDNPM4HBCbBFRsdz9aYg=
X-Gm-Gg: ASbGncvJM4znAHnS/VJm3yw3zsYkz5Ogd/jDe+1e/nRf6UY9REizFiWFJPCDBtC1O45
	8J67l5+qAibg7qp+FjCZiOutWe2P7CY/MKM/hU96nHhtg1XVRWNHW0xNv1PrPBUqkqE3e1g==
X-Google-Smtp-Source: AGHT+IFAauF3ujNhgDjOT4xeOGtCr/wxIkY8hqpVIBW0I65Elwxcj3g4j+FKksFlophDch/7GEvnM0WPPbbN955zfiQ=
X-Received: by 2002:a5d:47c5:0:b0:38a:4184:1216 with SMTP id
 ffacd0b85a97d-38a4b9a98d4mr17319346f8f.46.1735863539752; Thu, 02 Jan 2025
 16:18:59 -0800 (PST)
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-8-honyuenkwun@gmail.com>
 <20250102215308.GA636148-robh@kernel.org>
In-Reply-To: <20250102215308.GA636148-robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 2 Jan 2025 18:18:48 -0600
Message-ID: <CALWfF7+B1nkKsA9RvCVhAytotgRM16-6Q1z+V5YyQCDSh4cc9w@mail.gmail.com>
Subject: Re: [RFC 4/7] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_161902_505280_3DB0D89F 
X-CRM114-Status: GOOD (  19.07  )
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

T24gVGh1LCBKYW4gMiwgMjAyNSBhdCAzOjUz4oCvUE0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBTdW4sIERlYyAyOSwgMjAyNCBhdCAxMjo0MTozMVBNIC0wNjAw
LCBKaW1teSBIb24gd3JvdGU6Cj4gPiBBZGQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciB0aGUgWHVu
bG9uZyBPcmFuZ2UgUGkgNSBVbHRyYSBib2FyZC4KPgo+IFdoeSBSRkM/IExvb2tzIGZpbmUgdG8g
bWUuClRoZSBEVFMgaXMgb25seSBhIFJGQyBiZWNhdXNlIHRoZSBib2FyZCBzY2hlbWF0aWMgZm9y
IHRoZSBVbHRyYSBoYXMKbm90IGJlZW4gcmVsZWFzZWQgeWV0LiBTbyBJIGhhdmVuJ3QgYmVlbiBh
YmxlIHRvIGNvbmZpcm0gdGhlIHBpbm91dHMuCgpUaGUgNSBVbHRyYSBEVFMgaXMgbWFpbmx5IGEg
cHJldmlldyB0byBzaG93IHRoZSBzaW1pbGFyaXRpZXMgYmV0d2Vlbgp0aGUgNSBNYXggYW5kIHRo
ZSA1IFVsdHJhLgoKPgo+IEhvd2V2ZXIsIHlvdSBzaG91bGQgaGF2ZSAndjQnIG9uIGV2ZXJ5IHBh
dGNoIGluIHRoZSBzZXJpZXMgaWYgdGhpcyBpcwo+IHY0LgpXaWxsIGRvLgoKPgo+ID4KPiA+IFRo
ZSBPcmFuZ2UgUGkgNSBVbHRyYSBpcyBhIHNpbmdsZSBib2FyZCBjb21wdXRlciBwb3dlcmVkIGJ5
IHRoZSBSb2NrY2hpcAo+ID4gUkszNTg4IHdpdGggc2ltaWxhciBib2FyZCBsYXlvdXQgYXMgdGhl
IDUgTWF4IGJ1dCB3aXRoIHRoZSBIRE1JMCBzd2FwcGVkCj4gPiBmb3IgSERNSSBJTi4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBKaW1teSBIb24gPGhvbnl1ZW5rd3VuQGdtYWlsLmNvbT4KPiA+IC0t
LQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFt
bCB8IDMgKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JvY2tjaGlwLnlhbWwKPiA+IGluZGV4IDJhMTQxZDk5YzUzMy4uOWRkNDI0MjY1ODI2IDEw
MDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2Nr
Y2hpcC55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwKPiA+IEBAIC0xMDc1LDExICsxMDc1LDEyIEBAIHByb3BlcnRpZXM6Cj4g
PiAgICAgICAgICAgIC0gY29uc3Q6IHh1bmxvbmcsb3JhbmdlcGktM2IKPiA+ICAgICAgICAgICAg
LSBjb25zdDogcm9ja2NoaXAscmszNTY2Cj4gPgo+ID4gLSAgICAgIC0gZGVzY3JpcHRpb246IFh1
bmxvbmcgT3JhbmdlIFBpIDUgTWF4L1BsdXMKPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBYdW5s
b25nIE9yYW5nZSBQaSA1IE1heC9QbHVzL1VsdHJhCj4gPiAgICAgICAgICBpdGVtczoKPiA+ICAg
ICAgICAgICAgLSBlbnVtOgo+ID4gICAgICAgICAgICAgICAgLSB4dW5sb25nLG9yYW5nZXBpLTUt
bWF4Cj4gPiAgICAgICAgICAgICAgICAtIHh1bmxvbmcsb3JhbmdlcGktNS1wbHVzCj4gPiArICAg
ICAgICAgICAgICAtIHh1bmxvbmcsb3JhbmdlcGktNS11bHRyYQo+ID4gICAgICAgICAgICAtIGNv
bnN0OiByb2NrY2hpcCxyazM1ODgKPiA+Cj4gPiAgICAgICAgLSBkZXNjcmlwdGlvbjogWHVubG9u
ZyBPcmFuZ2UgUGkgUjEgUGx1cyAvIExUUwo+ID4gLS0KPiA+IDIuNDcuMQo+ID4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
