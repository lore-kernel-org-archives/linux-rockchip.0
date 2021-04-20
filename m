Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76DAC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 11:36:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D30D5613AE
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 11:36:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D30D5613AE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j7HyB6+s5QTF8HS8Y8S+HyCFhIuTv9Hs4OLMtMW/U3w=; b=dX8d8cTxcab/Yrzx8Hf+qfOT9
	DsqhZGCLedkQ5Els4WBSp0ka3Ovx1K+1VpcEgJhFTNNuQPiJAKE+TCpdZA9P7fBGr8ZNy+PoXl2gW
	LeXlZ7GMl/I3m4camedPqhyrmayhblJ67sc/crAxjnOCfsSftrc0aVSef320Xdsx1MK2OODEDW06S
	8rFZxbX/hDm/lbxHaWraNU0bH/LFOzDz+AsZ6KzsDic7V4DoswJAn8AxeKrCNbwooS8AwtuLU75Xw
	HJ1BSFcdMZXFRFa/CI7YzhVJXGMu1J7WVZhpY1bvvSuiay3pUrQ64oji5IziwAcJSRQghq4ylRgUV
	XVNdP00Iw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYofu-00C07a-Lk; Tue, 20 Apr 2021 11:36:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYofj-00C064-Dl; Tue, 20 Apr 2021 11:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=doq2K2ciyiMrj6S2cEcZtlgv25cz/m88RRkxLWtesi0=; b=hROMlFWC0QcB0jxqdDShaFjzfF
 3B7p3v1a50W9TTZisXD1FwbeZMteYGSek82toP/v4LU8GOlLL5uleix9A3KzeYbePS8S9G3WGA+SQ
 LG0WyRq2nX8AWz2qIgv1sbL+NwBAMXYebZQBJDQLrRHSvWGcZTrwrvwcsXbyCG20qzX6+kSY+5BFZ
 dGZJwTXrXLpBkRFEjBcfZakctD4O/Is2zhfjOBRRqAu52BWYRjYVmj5N7DZxooY+4yUQI9aO+eNWS
 gf+Q/kefsFsOvpPO3pEZHoBypPBU/8Cqz91rc+67ypgYkfjLVCm/c6xdi8WIk1P5kvTeY1FL5qlDo
 6ZoSmFVQ==;
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYofd-00C4WD-RI; Tue, 20 Apr 2021 11:36:02 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YofWlXS4Q8K3KYofZlzPTx; Tue, 20 Apr 2021 13:35:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1618918554; bh=doq2K2ciyiMrj6S2cEcZtlgv25cz/m88RRkxLWtesi0=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=MeQVxCP+HH56vApGqKbqC5wUCSSWQGP9mNawk6Mk02oGP56yK+tCBQnJtmVAI9mCH
 TKeZA9gsE7s7v/jZJjdBi/p8sDDdMfgFUXldy7hOJVdugYNdylHPLXIhlc7GNgUOG0
 LlS+Q4T9uZLsVGfm/kujA39HiHl9Ndtv+X0Zu4lBz2FwhP3YYVJKNnZNj9vV0983Fo
 iT81rSskXhJWj0a62618wQduoFbNW8reougESlXqrPCo/JAXCxp/Vn6Mjz7IfRzcxc
 X3GaRMKVXT9ENB6INQAxZ0CUdLjA/wL/cQGhnq4b00oGj3HrHAQHxEJWdIJ1vWKjEl
 r3DdOOXYnszDw==
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>, ezequiel@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, kernel@collabora.com, cphealy@gmail.com,
 linux-arm-kernel@lists.infradead.org
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <ffe9b3f5-94f5-453e-73f0-4b42d0454b63@collabora.com>
 <529b61b1b1e6030c92a7944c4864246521b2ccdd.camel@pengutronix.de>
 <36008691-d075-203d-0cac-2a012773ea34@collabora.com>
 <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
 <e7064bb1-69e6-4214-380d-c464b7832da5@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <0f23d42e-b858-c57d-3bf7-32b511e919d1@xs4all.nl>
Date: Tue, 20 Apr 2021 13:35:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <e7064bb1-69e6-4214-380d-c464b7832da5@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfGZ13gHMa8gkiXjz8wgDyFzaYYCt9UUsYTPpCio4nZAkdDDxuKCKceeVqGxUSF/TqIr7N6FcI4GNAGxjmkU652ja4jvW2ByzAdmzDG7vM0WvbOQLToVt
 +mr75r84cLP2CO6ycEvczdsIhyMbPGyivQMF81Dk1z1w/MCH2xL3B2Pj9yGE+uFHVqCVUwwL8EdHJyq6n//fRi3m0eHmoDIVrcSHRSTVk1wFs3Fab5YV2D97
 3YIkQKISbzqaJeYyogGdeE8knqEpiFk/fYwiuSc/aSTT0qfrh9qmLrAyryJvItbse7nIlANMWfkNVeIsK6b1Uoc1+9+Fm+o0CYFLIPzLAggTUFyerXuWgwqk
 qqclmRbc7mo6E90K1AucAxaa9/s/LT8F/2to5S6UTEO63+spg6fMmDAI1YnCm/A2pW6lgtvsugovF2QKHfElcJuSLrY0X9whEo9a85W0qOD1bwFfpGwwf+H3
 pK/KHHQPZo42GVN9sY2vNauHBtESUNXdSNA+lorJBkj7VlDwUJL+8jq1WPuGlLwV7YWemR0ZZSEOQ/1mj3TaSDVLmellT2q1F3PYn1qnpxIKtc+K2XWJnWWH
 RAv9NS56n6kDsbfRKnYxZoeIpOh0psmezsRNAIvzUteOUMeJc9cFYX/6HzU3hbbYe3XdKTuqHXkAulupEOeRQ4xJnlXp0wPAQbSzWgJKz8pFvQEsPbXZO5gB
 D1hA43gaNvPivGfQBPep8U3dmOFT8+cCk6xQr+YuoSPlabY0HB4B5OYO5uFUUPqb1rxxRjwGnmRGRBAzPlCAjRL9snvPaRXdMopeT+G4EQG9aAtMyHRAk833
 MUi6eTmQAp4egsQoQk4yT50p3lAjq9eob2h/5HQtOxOs9GkQZer8sRzTfFp2dcRsqF25fIqkINBovF9M+QVjsZgAlULp9iRGXZxf00NjTsHW0ydseWWQQFxR
 3XqD/DPlAZmD4M3kUOuVTsa9LtHz1hsE5LKFNE89ZFuRfxMZ/IvuEsVNKFHv5GUrw18ATY4Eqrv9Q+gBgR+FlsbXPsI9xcBU3awWbqBxNp6YPjl1GBdnrSsQ
 UY/sfRYqzyGfdLHP/JnPNstLKjv5MlYB0d5ZyRqzbAOatkYa6rOB/9psCaL+n/9XBfClrWaF/gH1jooXhq4zn+gol4qMoXEF1nM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_043558_056626_8BC63583 
X-CRM114-Status: GOOD (  21.30  )
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

T24gMjAvMDQvMjAyMSAxMTozMSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMjAv
MDQvMjAyMSDDoCAxMToxNiwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDIwLzA0LzIw
MjEgMTE6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gTGUgMTYvMDQvMjAyMSDDoCAx
NzoxNCwgTHVjYXMgU3RhY2ggYSDDqWNyaXTCoDoKPj4+PiBBbSBGcmVpdGFnLCBkZW0gMTYuMDQu
MjAyMSB1bSAxNTowOCArMDIwMCBzY2hyaWViIEJlbmphbWluIEdhaWduYXJkOgo+Pj4+PiBMZSAx
Ni8wNC8yMDIxIMOgIDEyOjU0LCBMdWNhcyBTdGFjaCBhIMOpY3JpdMKgOgo+Pj4+Pj4gQW0gTWl0
dHdvY2gsIGRlbSAwNy4wNC4yMDIxIHVtIDA5OjM1ICswMjAwIHNjaHJpZWIgQmVuamFtaW4gR2Fp
Z25hcmQ6Cj4+Pj4+Pj4gSW4gb3JkZXIgdG8gYmUgYWJsZSB0byBzaGFyZSB0aGUgY29udHJvbCBo
YXJkd2FyZSBibG9jayBiZXR3ZWVuCj4+Pj4+Pj4gVlBVcyB1c2UgYSBzeXNjb24gaW5zdGVhZCBh
IGlvcmVtYXAgaXQgaW4gdGhlIGRyaXZlci4KPj4+Pj4+PiBUbyBrZWVwIHRoZSBjb21wYXRpYmls
aXR5IHdpdGggb2xkZXIgRFQgaWYgJ254cCxpbXg4bXEtdnB1LWN0cmwnCj4+Pj4+Pj4gcGhhbmRs
ZSBpcyBub3QgZm91bmQgbG9vayBhdCAnY3RybCcgcmVnLW5hbWUuCj4+Pj4+Pj4gV2l0aCB0aGUg
bWV0aG9kIGl0IGJlY29tZXMgdXNlbGVzcyB0byBwcm92aWRlIGEgbGlzdCBvZiByZWdpc3Rlcgo+
Pj4+Pj4+IG5hbWVzIHNvIHJlbW92ZSBpdC4KPj4+Pj4+IFNvcnJ5IGZvciBwdXR0aW5nIGEgc3Bv
a2UgaW4gdGhlIHdoZWVsIGFmdGVyIG1hbnkgaXRlcmF0aW9ucyBvZiB0aGUKPj4+Pj4+IHNlcmll
cy4KPj4+Pj4+Cj4+Pj4+PiBXZSBqdXN0IGRpc2N1c3NlZCBhIHdheSBmb3J3YXJkIG9uIGhvdyB0
byBoYW5kbGUgdGhlIGNsb2NrcyBhbmQgcmVzZXRzCj4+Pj4+PiBwcm92aWRlZCBieSB0aGUgYmxr
Y3RsIGJsb2NrIG9uIGkuTVg4TU0gYW5kIGxhdGVyIGFuZCBpdCBzZWVtcyB0aGVyZSBpcwo+Pj4+
Pj4gYSBjb25zZW5zdXMgb24gdHJ5aW5nIHRvIHByb3ZpZGUgdmlydHVhbCBwb3dlciBkb21haW5z
IGZyb20gYSBibGtjdGwKPj4+Pj4+IGRyaXZlciwgY29udHJvbGxpbmcgY2xvY2tzIGFuZCByZXNl
dHMgZm9yIHRoZSBkZXZpY2VzIGluIHRoZSBwb3dlcgo+Pj4+Pj4gZG9tYWluLiBJIHdvdWxkIGxp
a2UgdG8gYXZvaWQgaW50cm9kdWNpbmcgeWV0IGFub3RoZXIgd2F5IG9mIGhhbmRsaW5nCj4+Pj4+
PiB0aGUgYmxrY3RsIGFuZCB0aHVzIHdvdWxkIGxpa2UgdG8gYWxpZ24gdGhlIGkuTVg4TVEgVlBV
IGJsa2N0bCB3aXRoCj4+Pj4+PiB3aGF0IHdlIGFyZSBwbGFubmluZyB0byBkbyBvbiB0aGUgbGF0
ZXIgY2hpcCBnZW5lcmF0aW9ucy4KPj4+Pj4+Cj4+Pj4+PiBDQydpbmcgSmFja3kgQmFpIGFuZCBQ
ZW5nIEZhbiBmcm9tIE5YUCwgYXMgdGhleSB3ZXJlIGdvaW5nIHRvIGdpdmUgdGhpcwo+Pj4+Pj4g
dmlydHVhbCBwb3dlciBkb21haW4gdGhpbmcgYSBzaG90Lgo+Pj4+PiBUaGF0IGNvdWxkIHJlcGxh
Y2UgdGhlIDMgZmlyc3QgcGF0Y2hlcyBhbmQgRHQgcGF0Y2hlIG9mIHRoaXMgc2VyaWVzCj4+Pj4+
IGJ1dCB0aGF0IHdpbGwgbm90IGltcGFjdCB0aGUgaGV2YyBwYXJ0LCBzbyBJIHdvbmRlciBpZiBw
dXJlIGhldmMgcGF0Y2hlcwo+Pj4+PiBjb3VsZCBiZSBtZXJnZWQgYW55d2F5ID8KPj4+Pj4gVGhl
eSBhcmUgcmV2aWV3ZWQgYW5kIGRvbid0IGRlcGVuZCBvZiBob3cgdGhlIGN0cmwgYmxvY2sgaXMg
bWFuYWdlZC4KPj4+PiBJJ20gbm90IHJlYWxseSBpbiBhIHBvc2l0aW9uIHRvIGdpdmUgYW55IGlu
Zm9ybWVkIG9waW5pb24gYWJvdXQgdGhhdAo+Pj4+IGh2ZWMgcGF0Y2hlcywgYXMgSSBvbmx5IHNr
aW1tZWQgdGhlbSwgYnV0IEkgZG9uJ3Qgc2VlIGFueSByZWFzb24gdG8KPj4+PiBkZWxheSBwYXRj
aGVzIDA0LTExIGZyb20gdGhpcyBzZXJpZXMgdW50aWwgdGhlIGkuTVg4TSBwbGF0Zm9ybSBpc3N1
ZXMKPj4+PiBhcmUgc29ydGVkLiBBRkFJQ1MgdGhvc2UgdGhpbmdzIGFyZSB0b3RhbGx5IG9ydGhv
Z29uYWwuCj4+PiBIaSBIYW5zLAo+Pj4gV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgdGhpcyBwcm9w
b3NhbCB0byBzcGxpdCB0aGlzIHNlcmllcyA/Cj4+PiBHZXQgaGV2YyBwYXJ0IG1lcmdlZCBjb3Vs
ZCBhbGxvdyBtZSB0byBjb250aW51ZSB0byBhZGQgZmVhdHVyZXMKPj4+IGxpa2Ugc2NhbGluZyBs
aXN0cywgY29tcHJlc3NlZCByZWZlcmVuY2UgYnVmZmVycyBhbmQgMTAtYml0IHN1cHBvcnRzLgo+
PiBNYWtlcyBzZW5zZSB0byBtZSEKPiAKPiBHcmVhdCAhCj4gSWYgdGhlIGxhdGVzdCB2ZXJzaW9u
IG1hdGNoIHlvdXIgZXhwZWN0YXRpb25zIGhvdyB3b3VsZCB5b3UgbGlrZSB0byBwcm9jZXNzZWQg
Pwo+IENhbiB5b3UgbWVyZ2VkIHBhdGNoZXMgNCB0byAxMiA/IG9yIHNob3VsZCBJIHJlc2VuZCB0
aGVtIGluIGEgbmV3IHNob3J0ZWQgc2VyaWVzID8KCkEgc2VwYXJhdGUgcGF0Y2ggc2VyaWVzIHdv
dWxkIGJlIGVhc2llciBmb3IgbWUuCgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gUmVnYXJkcywKPiBC
ZW5qYW1pbgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiAJSGFucwo+PgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
