Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86842C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 16:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1vyn4CSEGE/1ZWU8z1qYS5RuV68qsXh/eP6ir2jBSA=; b=2r+Zydbemxz1Rw
	f9ENeM63ubAQ1Hvvzu94/IbjgkQHbzd70M00IaUyBTw3gOMP/G6LaWULF+8gygpwD73IfvGDlrLYA
	16hFMOok0IVztIqlT9n75V2HNW8UCeDnhLuX3OpYAOikNQbe0zLAsZII1NJWOu0mmU+Vro1Y+5+UK
	rK9Es8QYMmxoGq0hKBzlzqUag1KXI0quERVINdjxtUc5KZGih2z8Sv78DlYXWNcDvFsYVlQJbjzWo
	/f7CwWujhaeiJbNqhX/y3jodW1FkzovReV5yYu/94ba0tHYDetq+2RKJA8JuAEzPzWAgb35z9GZRB
	ax8pHqzweG1LdNZXNNmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnkAE-00AgM2-1y; Sun, 08 May 2022 16:53:46 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnkA2-00AgIZ-QY; Sun, 08 May 2022 16:53:36 +0000
Received: by mail-yb1-xb32.google.com with SMTP id v59so21021412ybi.12;
 Sun, 08 May 2022 09:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3F1Pq3gU9pnrxqbFtjzJI31YKJjKY/6sCWthpC+SyWI=;
 b=q2EaRXL/xo0X/zpAUJ6IwW1+vmpwhySxUV7v1BtjeUlLo3iVY5vWnLI4MskoSMxSsj
 Ijo22uXDT092q3OsT6chJ5bTvTwuwigVs9EL9zR0o37oloNz2mvTmVzoPVezk/urE/EA
 Tk/VyNd2NJ1o5ts2dA2oMv79C01GzafvKPMB6bRtHQjbkarTERkCF8NF4m8ErTmsWCYc
 ff5yTbpTwrEDaaATRj0SRlB2kuMCbwDHryLZiNnyleK2gGYxmZug2n0T09vvF2Cz+QyH
 RHKzXG15FP7sronSdF7OZqMDosStkaCvDt1mF/93HLAh/SpsZeriMXa6OJr4lyt61asn
 qkBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3F1Pq3gU9pnrxqbFtjzJI31YKJjKY/6sCWthpC+SyWI=;
 b=ry5Z6kGhvAGLYlGVbfN/PtN/4yJofPf55Wan8irg97qm5NCalccHExe9iSQhhOCLb7
 xd2De06H6Bq5ARSuyUvsDRbAdyliM13dD4yBy4pClLK6FYPtNpOjia2UjrFJEMhBzit5
 tP2tvQURAn/Cg4bVGERD8bJhlQQh2ncuuyytxmqQ6e6CVEODogDXyVYeccAhh3cgbEl9
 +58pWbWQjLb82oZGS/xjrkM7euiVALZoNFii0a4KSwkdB/EpRV904S9i0c4k9MCRelng
 Dyudv80CI0vl8/llie7/qS8GRNKKZS5VwVKGY1gwlZI24NUOqidzfIzVQj8HA/0B1WM1
 +gbQ==
X-Gm-Message-State: AOAM5320wSQ9QXP/TiW3STxcRLdAnbp9xmc6mydOgzcUozlP19ImA7jb
 N7pGcrf9cEdjFQf8gv9fauyzYmsfN9gz78fsKq8=
X-Google-Smtp-Source: ABdhPJwI9hCRzsuCfUL5+MI7byJrBIXIu6HCctuZjDYDKgqhMNsR/VFPkVCJcslqOpQCZ2iRWjaE+azUpqF8YwMnSVE=
X-Received: by 2002:a5b:64c:0:b0:64a:684a:2369 with SMTP id
 o12-20020a5b064c000000b0064a684a2369mr10146433ybq.173.1652028812891; Sun, 08
 May 2022 09:53:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
In-Reply-To: <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 8 May 2022 12:53:21 -0400
Message-ID: <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 dri-devel@lists.freedesktop.org, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_095334_903918_87D3E1DB 
X-CRM114-Status: GOOD (  18.86  )
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

T24gU3VuLCBNYXkgOCwgMjAyMiBhdCA5OjQwIEFNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIub25p
c3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBw
cnpleiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHcgZG5pdSAyMi4wNC4y
MDIyLCBvIGdvZHouIDA5OjI4Ogo+ID4KPiA+IEZyb206IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVs
LnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KPiA+Cj4gPiBFbmFibGUgdGhlIFJLMzU2eCBWaWRlbyBP
dXRwdXQgUHJvY2Vzc29yIChWT1ApIDIgb24gdGhlIFJhZHhhCj4gPiBST0NLMyBNb2RlbCBBLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xm
dmlzaW9uLm5ldD4KPiA+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVs
LmNvbT4KPiA+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMjAzMTAyMTAzNTIu
NDUxMTM2LTQtbWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQKPiA+IFNpZ25lZC1vZmYtYnk6
IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPiA+IC0tLQo+Cj4gU2FzY2hh
LCBNaWNoYWVsLAoKR29vZCBBZnRlcm5vb24sCj4KPiBJJ20gdXNpbmcgdjExIHNlcmllcyBvbiA1
LjE4LXJjNSBvbiByazM1NjYgdHZib3ggd2l0aCBncmVhdCBzdWNjZXNzLgo+IFJlY2VudGx5IGkg
c3RhcnRlZCB0byB3b3JrIG9uIHJvY2szLWEgKHJrMzU2OCkuCj4gdjExIGdpdmVzIG1lIHZpZGVv
LCBhdWRpbyAtIGJ1dCBjZWMgaXMgbm90IHdvcmtpbmcgb24gcm9jazMtYS4KPgo+IEkgd2FzIHRv
bGQ6Cj4KPiAzMmsgY2xvY2sgbmVlZGVkIGZvciBjZWMgYW5kIHRoaXMgY2xvY2sgaXMgZ2VuZXJh
dGVkIGJ5IHRoZSBydGMgd2hpY2ggaXMgZW1iZWRkZWQgaW4gdGhlIHJrOHh4IHJlZ3VsYXRvci4K
PiBTbyB5b3Ugc2hvdWxkIG1ha2Ugc3VyZSBpdCBpcyBlbmFibGVkIHdoZW4gaGRtaSBpcyBwb3dl
cmQgb24sIGVnIGFkZGluZyBpdCB0byB0aGUgUkszNTY4X1BEX1ZPIHBvd2VyZG9tYWluIHNob3Vs
ZCBoZWxwCj4KPiBJIHdhcyB0cnlpbmcgdG8gZG8gdGhpcyBpbiBkdHMgaHR0cHM6Ly9wYXN0ZWJp
bi5jb20vNjd3dTlRckggYnV0IGNlYyBpcyBzdGlsbCBub24tZnVuY3Rpb25hbAo+Cj4gTWF5YmUg
WW91IGhhdmUgc29tZSBoaW50cy9wb2ludGVycyBoZXJlPwoKQWRkIHRoZSBmb2xsb3dpbmcgdG8g
dGhlIEhETUkgbm9kZToKYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgQ0xLX0hETUlfQ0VDPjsKYXNz
aWduZWQtY2xvY2stcmF0ZXMgPSA8MzI3Njg+OwoKVGhlIGlzc3VlIGlzIHRoZSBjbGtfcnRjMzJr
X2ZyYWMgY2xvY2sgdGhhdCBmZWVkcyBjbGtfcnRjXzMyayB3aGljaApmZWVkcyBjbGtfaGRtaV9j
ZWMgaXMgMjRtaHogYXQgYm9vdCwgd2hpY2ggaXMgdG9vIGhpZ2ggZm9yIENFQyB0bwpmdW5jdGlv
bi4KSSBzdWJtaXR0ZWQgYSBwYXRjaCB0byBoYXZlIHRoZSBoZG1pIGRyaXZlciBoYW5kbGUgdGhp
cywgYnV0IGl0IGJyb2tlCm90aGVyIFNvQ3MgYmVjYXVzZSAzMmsgaXMgYW4gb3B0aW9uYWwgY2xv
Y2suClNpbmNlIHRoaXMgaXMgdGhlIGNhc2UsIEknZCBsaWtlIFJvYmluIHRvIHdlaWdoIGluIG9u
IGdvaW5nIHRoZQphc3NpZ25lZC1jbG9jayByb3V0ZSBhZ2Fpbi4KCj4KPiBicgo+Cj4gYnR3OiBt
eSBkdHMgZ2l2ZXMgbWUgd29ya2luZyB1c2IyIHBvcnQwL3BvcnQxIGFuZCB1c2IzIHBvcnQwLiBi
dXQgdXNiMyBwb3J0MSBpcyBub24td29ya2luZwo+IG1heWJlIHlvdSBrbm93IHdoYXQgaXMgbWlz
c2luZz8KCllvdSdyZSBtaXNzaW5nICZ1c2IycGh5MF9vdGcuCgpWZXJ5IFJlc3BlY3RmdWxseSwK
UGV0ZXIgR2VpcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
