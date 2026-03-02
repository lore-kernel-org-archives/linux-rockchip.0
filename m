Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D5FBEB3624
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 19:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baoBmf9RMI/Hsg7slimgkMp8NLwwh0MREFtceX0Exig=; b=ge5HSnkgbePEh6
	KLii+GFlGUlX0PSEKa5KHFmcpjkHYlBvOLYQMH1DG3r1Ad2V19kaV07wRjrNGElzQ4NL5qqTdbzOJ
	AFH6tj4XEPlFS0oZIHoFJMZtxwtkKy4ryZiyN8Vzc4cb5fotdusm2WaUwn9xvnPyGOfzB2ZgMT1no
	wNNd+dLY4RT5cVUF8waJDvSIyq+JHjLBBhhsP8n4GxxLfHedZGeKcqod4PN8C2P7RqGE0csJKwc+N
	v0wcSwCW27PHLki23ZJoJ7vyIHrkYk6aH5QSiID4Xtbk7m17WueyQHaP6vyXh8gMZAAhey3Ps6GcZ
	+aq9fzA8kV5xtRTMNTQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx9E2-0000000Dl0J-2UYn;
	Mon, 02 Mar 2026 19:46:42 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx9Dz-0000000Dkzd-05Fn;
	Mon, 02 Mar 2026 19:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=online.de;
	s=s42582890; t=1772480778; x=1773085578; i=dubito@online.de;
	bh=5wpJnUhLRwyBq+mVVA23zcsGSxWP3hdj1JlJ6fsTXco=;
	h=X-UI-Sender-Class:Message-ID:Subject:From:Reply-To:To:Cc:Date:
	 In-Reply-To:References:Content-Type:Content-Transfer-Encoding:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=Z8utqfQy8up1CjNjHJ++HIovPDAccNha3TEAGqLwi4/4iGFTIvKSbpe8xOU/hSEW
	 oVzJdlguKH+75AOfc92ZQyP0rjPL9kbAaEhS4SC95kmqUD5vNfNZfwqqOp1TW7tDN
	 uEbkMFWOm6C7ECJcNc0PyhuNKNs2ylif7PwREFGvRuld2Dhc0aS7/YtcwZeZPbKXK
	 Y/XvyW8dgDGJaebx8QCHu7mHMSm8II7GjTniJazGDoF1E9waZINYue53QafkYIyYZ
	 o3IGMjoUy7LKe8+5BhO38VRyry2dT9Sv++Er+oliD1MrZOW9ei6+ayYcJDuvHn9y3
	 QJ1x/Mn+oX0GgpcKRg==
X-UI-Sender-Class: 6003b46c-3fee-4677-9b8b-2b628d989298
Received: from client.hidden.invalid by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MCbMx-1voae939TH-008xjv; Mon, 02
 Mar 2026 20:46:18 +0100
Message-ID: <88436a35a3197393b5eb4fc49962a3b5906bf147.camel@online.de>
Subject: Re: [PATCH 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
From: 1und1 <dubito@online.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Vinod Koul	
 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Heiko
 Stuebner	 <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, Dmitry
 Baryshkov	 <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 02 Mar 2026 20:46:17 +0100
In-Reply-To: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
References: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
User-Agent: Evolution 3.58.2 
MIME-Version: 1.0
X-Provags-ID: V03:K1:cHIHrp76Krx+GEiJ5Tr6zcnpn4uuuBPmlSmCgX9BsnMwNrozq1o
 P7sQaNOEGbHnLO1lOUcJLcVt2eWyVNS2JZDjLtrgCVjobiXhS0XJhyAPkLaTd4v9Ohpp3aY
 VfadFkfCnZFYH4mmvNjuvYL4c0h+K18RO5sXwGph08EHycTs+hXxJh4+DOgOmvUX+OW3dfR
 WBDTIAnti+POCpjc0e97Q==
UI-OutboundReport: notjunk:1;M01:P0:s4RTz3M8PsA=;YoUrHsNC9MqC5e3Q4AE0fVVvhCc
 L3cVFd708vlOoBQQjNwTfHSwy4r/qwqtzutD8bdFuaS6GMVTLR6UPrXGUuEnmEpidnOoCIdn/
 iJUiXJ5cv4hzZ3oCvr/MTOZ+pcqtd5HgKDIt/u9IFRvN/7YxlWpvCQFinEiy163txV4YlOppc
 HRxS0FIXr/3UPAGJB9KMWeoY5jfiIluV4CgEqV2Axlo/eh5amwTPXo+34SdYmuJ/22XOcxEiU
 feynNFwlfAobmwtRRNWxNcwwdcFkwxGtggOU+s9jNGSVN5y5VBhkqPYJ6IKXNgUID2xKsTzIx
 r4XuuIXbceKD2RBclQvg9B2nZGG19DeyZzYJpptSY2oZkkbLLhI/IaF9hbMcM6Fv4RY9wkWlQ
 PU0tkfFcSrqHpqzAj5cXB8qDmNAIhZR+2h3/P6R6vsa50QTWh42/ImLtbhl/fDPLvluHfhdib
 KCKYz6wz4y8A4ek5GdWAlAZmc2v2LAwcPNlE6U5rkTFl8Lu/vgnb/B7lP5YGsjGKJiMQXeYNl
 HiZu+GVTaiqq+lMlUcRUAal2R+0yZ1twqFc3Eg6ddU+f5VFHFdwmx5Bf9lzBarpxBbTsI93sY
 v80k7gchXlWF3+GqAu/zJv6qRwRY/dTlRPSFJrMtCdj2XV7wNAyMHP4eqo0kPCOq5GsR2RUgl
 CXm/MgHr9HeDc8cU/OERv7Ftd3HWgEvK0NhG8jVVehTEYWI/6wvM859JzKr2qQfcrFbbc1gTq
 YV2/AzBGzQhlDu8No41umSdZwAC/8bghFtxuPEG+Uo/7WhZrMSnyEMncgL/m7NmCAkxAY4b5V
 7Ct9KvW5YJzLq9akjejY1vrhWs7CoWW/d0L+id54gxXRHUNc2bJspAjIfA2iSZA8RWm1+DOA7
 HcwlhlHtRAyDK1H1vOqJ9pImjA3n2tJs/PBnKrIHiUf8ZZP4h8JxNWXIdW5a8fpaJwtAzmYNX
 87YpQQ2wt5pwSzNJ26fZEZvJNqol4Rl6fYQbWZpxZIr2BmfiXJFmIEjKneOLL++UtHPFulvHV
 Lxa4gFTjjy3/AdTzTzQ9FfNOg++uxDAZMC9XSRl6umEjJWYZacsUKBsNOaaRLfQqVftKc4aeX
 18S718vr5nXYJtbeK/Vhjx3LHp3ndHndpGWr8vZTX67parLDPTJ55bLGoKEMYFoplL/FUZO1k
 e2iZKwT83MvAn+yw45Tt4Tt7ic38aml8TUuCjGYGy7tlDNbpioMV4zEHsMoedeLftyew9zUUg
 ApH2mbxnK4a51Fsl+Ay+FL00GPeQV1rhkbtQfPHPRF3sQ7Kvj7t7XtaO7DTD9K5+YyYntReqU
 W1wm+Y6gVy/8q/s2BLdAnJ0A4w4W7EHXqTgdF25q76eLqm/S7bM2TULEDtDDpcx//OXCe+adk
 Ful57G2Nw/X37RznMDCYOLCG90YO4tv5YqCm0f+BkcZaefyeZn3RvkN6cMtRamD/cQU+Zfx3B
 a4njP3qB6GluYFSNCYVp6z2FmuZq9GlCDQ6ovXOuCqrPHdkR/SXn1c630GF6SLiOpJqn0F408
 pzGmmQZ7TBdlNvWZtPFYs9gN3Yi0hFm8PacpUpLUHqZJgXrJOsGFQTcofsULx4RRGXp6sQTpO
 d2aUS+w+t+unVlWg8Sdch5Hy20NQzSZy8UaE2CA3XgF8hg+FCb3XPmrPfDvYRBNEJxu1kUggY
 OGOFPqrmN2WrfiC9Rjd95egP9AmOu2ZxCuU89V76Ua4PVc+H9l28/ouOzyLmR9yU5vAIDLgu/
 TxkY7k1VKmkyF5/I0tths5+D3vBcFPd5SJ/9AGvaQBx74Irj/HjjcPPZzLU/LTn6I/tozBibF
 GUp4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_114639_418147_622BCF01 
X-CRM114-Status: GOOD (  16.28  )
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
Reply-To: dubito@online.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQ3Jpc3RpYW4sCgpBbSBGcmVpdGFnLCBkZW0gMjcuMDIuMjAyNiB1bSAyMjo0OCArMDIwMCBz
Y2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBUaGlzIHNlcmllcyBwcm92aWRlcyBhIHNldCBv
ZiBidWcgZml4ZXMgYW5kIGNsZWFudXBzIGZvciB0aGUgUm9ja2NoaXAKPiBTYW1zdW5nIEhEUFRY
IFBIWSBkcml2ZXIuCj4gCj4gVGhlIGZpcnN0IHBhcnQgb2YgdGhlIHNlcmllcyAoaS5lLiBQQVRD
SCAxICYgMikgYWRkcmVzc2VzIGNsb2NrIHJhdGUKPiBjYWxjdWxhdGlvbiBhbmQgc3luY2hyb25p
emF0aW9uIGlzc3Vlcy7CoCBTcGVjaWZpY2FsbHksIGl0IGZpeGVzIGVkZ2UKPiBjYXNlcyB3aGVy
ZSB0aGUgUEhZIFBMTCBpcyBwcmUtcHJvZ3JhbW1lZCBieSBhbiBleHRlcm5hbCBjb21wb25lbnQg
KGxpa2UKPiBhIGJvb3Rsb2FkZXIpIG9yIHdoZW4gY2hhbmdpbmcgdGhlIGNvbG9yIGRlcHRoIChi
cGMpIHdoaWxlIGtlZXBpbmcgdGhlCj4gbW9kZWxpbmUgY29uc3RhbnQuwqAKCmFzIEkgYnJvdWdo
dCB1cCBvbmUgb2YgdGhlIG1lbnRpb25lZCBlZGdlIGNhc2VzwqB3aXRoIG15IFJhZHhhIFJvY2sg
NWIgYm9vdGluZwpsaW51eCBmcm9tIEVESzIgWzFdLCBJIHdhbnRlZCB0byByZXBvcnQgdGhhdCB3
aXRoIHRoaXMgc2VyaWVzIGFwcGxpZWQsCmV2ZXJ5dGhpbmcgd29ya3MgYXMgZXhwZWN0ZWQgYW5k
IG15IGlzc3VlcyBhcmUgZml4ZWQuCgpUaHVzLCBmZWVsIGZyZWUgdG8gYWRkIG15CgpUZXN0ZWQt
Ynk6IFRob21hcyBOaWVkZXJwcsO8bSA8ZHViaXRvQG9ubGluZS5kZT4KCj4gIEJlY2F1c2UgdGhl
IENvbW1vbiBDbG9jayBGcmFtZXdvcmsgLnNldF9yYXRlKCkKPiBjYWxsYmFjayBtaWdodCBub3Qg
YmUgaW52b2tlZCBpZiB0aGUgcGl4ZWwgY2xvY2sgcmVtYWlucyB1bmNoYW5nZWQsIHRoaXMKPiBw
cmV2aW91c2x5IGxlZCB0byBvdXQtb2Ytc3luYyBzdGF0ZXMgYmV0d2VlbiBDQ0YgYW5kIHRoZSBh
Y3R1YWwgSERNSSBQSFkKPiBjb25maWd1cmF0aW9uLgo+IAo+IFRoZSBzZWNvbmQgcGFydCBmb2N1
c2VzIG9uIGNvZGUgY2xlYW51cHMgYW5kIG1vZGVybml6aW5nIHRoZSByZWdpc3Rlcgo+IGFjY2Vz
cy7CoCBOb3cgdGhhdCBkd19oZG1pX3FwIGRyaXZlciBoYXMgZnVsbHkgc3dpdGNoZWQgdG8gdXNp
bmcKPiBwaHlfY29uZmlndXJlKCksIHdlIGNhbiBkcm9wIHRoZSBkZXByZWNhdGVkIFRNRFMgcmF0
ZSBzZXR1cCB3b3JrYXJvdW5kcwo+IGFuZCB0aGUgcmVzdHJpY3RfcmF0ZV9jaGFuZ2UgZmxhZyBs
b2dpYy7CoCBGaW5hbGx5LCBpdCByZWZhY3RvcnMgdGhlCj4gZHJpdmVyIHRvIGNvbnNpc3RlbnRs
eSB1c2Ugc3RhbmRhcmQgYml0ZmllbGQgbWFjcm9zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENyaXN0
aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4g
Q3Jpc3RpYW4gQ2lvY2FsdGVhICg2KToKPiDCoMKgwqDCoMKgIHBoeTogcm9ja2NoaXA6IHNhbXN1
bmctaGRwdHg6IEZpeCByYXRlIHJlY2FsY3VsYXRpb24gZm9yIGhpZ2ggYnBjCj4gwqDCoMKgwqDC
oCBwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBIYW5kbGUgdW5jb21taXR0ZWQgUEhZIGNv
bmZpZyBjaGFuZ2VzCj4gwqDCoMKgwqDCoCBwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBE
cm9wIFRNRFMgcmF0ZSBzZXR1cCB3b3JrYXJvdW5kCj4gwqDCoMKgwqDCoCBwaHk6IHJvY2tjaGlw
OiBzYW1zdW5nLWhkcHR4OiBEcm9wIHJlc3RyaWN0X3JhdGVfY2hhbmdlIGhhbmRsaW5nCj4gwqDC
oMKgwqDCoCBwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBTaW1wbGlmeSBHUkYgYWNjZXNz
IHdpdGggRklFTERfUFJFUF9XTTE2KCkKPiDCoMKgwqDCoMKgIHBoeTogcm9ja2NoaXA6IHNhbXN1
bmctaGRwdHg6IENvbnNpc3RlbnRseSB1c2UgYml0ZmllbGQgbWFjcm9zCj4gCj4gwqBkcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMjE1ICsrKysrKysr
Ky0tLS0tLS0tLS0tLQo+IC0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5MiBpbnNlcnRpb25zKCspLCAx
MjMgZGVsZXRpb25zKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDdkNjY2MTg3M2Y2YjU0Yzc1MTk1
NzgwYTQwZDY2YmFkM2Q0ODJkOGYKPiBjaGFuZ2UtaWQ6IDIwMjYwMjI3LWhkcHR4LWNsay1maXhl
cy00NzQyNjYzMmY4NjIKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpCZXN0IHJlZ2FyZHMsCgpUaG9tYXMKClsxXToK
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9iMzIxNjQwMDE5NDdiYTkyMmFlZmI2Y2E4NmE4
ZGM1OWU5MzIzZDJiLmNhbWVsQG9ubGluZS5kZS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
