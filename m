Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC92EC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 22:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoS1A3x5lvW4wE9zIOs/BlIJ9rNAsc4Up9DfTOoh5kg=; b=xBv1lXcsrDSnbX
	dffTaJlLnL87wgpR0YHpNyL98mrCB+Pd6qEc7BIwse5fZsVRcQauJTMv3RQ0rCbLKpO57YWCqogva
	TZcXbOQSobANoRAZQpMqNgKJpVNi9dB0fbchZK9Ro3CQj5dQjYl8jsht7ASZQPcRktOyELvxWOSj4
	jowcip4rC0H1mobdcZOgfgvj1zgli4SfR2PUzG5OZbkpvaTkAvv21rC7yEnQyctsHAem6Yvj1KUp/
	xgGLKqXxVYuihICfdSQkCwgelwT4FiDQCMD6Y2fa8FVqRTcwz6fiRDCbkqbC5HY2Hf/2ukb709UdW
	lfMk0tT1zpUBM1hvF4uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegcx-00000000HkP-1IVe;
	Tue, 30 Jun 2026 22:08:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegcu-00000000HjL-32rc
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 22:08:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UJDjhX2959561
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 22:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BcCIhz6+fnrglONp8q+fp9mef6PmcObbxRhKXStO7Qc=; b=cCTN+vD4HZwmI8lY
	ejqu7lzDeKTXwqFAMS/sTRNpvdMoMiAxUyoiJA4eFhpTgRLfRvMGXkbNO/sLcOq/
	Kr+o5qtLY8bZPydk48LmdD/QYhha9Mb3Zu6Jg+jFbz2OOi1lt4JlAnzouxfKRufJ
	1vGYuxgbkXfYsDebztJs91VxnfPK2OfyBaisU1JmguWpqdxoLPcaXic72syA9QUH
	lQgzTeaDRLIA5CkABN64XzCZrZhXKelOBhJ4L0wGngzhGDLoUE7KBunhksmwlV73
	6OwRuUZRp541lZkHdVRtlTvsEu9R7y1qiVobl6Ek9AO7twcGrKJzrgt8SbClgnEU
	dlxizg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4jkt8ypm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 22:08:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-915c364ae3bso1084085a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 15:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782857298; x=1783462098; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BcCIhz6+fnrglONp8q+fp9mef6PmcObbxRhKXStO7Qc=;
        b=TgYBaj8mFHD+LyDr87UTUqhnWcQkNOdxuhM6QUn4KlcU0mvuKug4Zbb2iAcxacRlNl
         kPlMVBkqsMRWuyYLnTOM7CEkQ/7WfP3cEiA7IzSNimh/Wl8lgWIQzrljZc+fYy6xMNuL
         8xhs6zfDkUGg0ALd9AEpFTPaAb633EgWrsbXz+znULtW2dCPdewIwL55IoY6b9xMdv5V
         y/OxdnvavYYt8n82D+TkPK6rndQ4h/WYVwNqaqpEzcyIWzLqZ5dkU5YvWrfa4VGIp6gV
         EL/+WysSkAOxiFaiJRDnNyIRXYbJopptQb/dQMHn12xcE93nlSYOa+82d16dobEumtOx
         gPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782857298; x=1783462098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BcCIhz6+fnrglONp8q+fp9mef6PmcObbxRhKXStO7Qc=;
        b=OkwNkHdqXrgE6+3py7BFRSNrvRJPymLREosr0rQ12TuSHK+l+OoYFBp6f+O8vazPv1
         aZz7CsmWHdTTBWReMZkDPbCvOd+StQbCGA1hlOT722Bv2329Thk01j8SQ6zRp5g/cF7D
         9szjHF2Q+0eRVZ2WVtyED1tjuDQqBIi23GxjCR5/li9oiX/EsKZowojBUTOyqM2i7apC
         agLNREYZTf4vLzMgzFoA/u45c5w/R6e1LnqQV2ZDh4bIjb6TjcsP1zKxcjLupL81E20q
         /z52uhPDjoI/b7kTUivEWh9PiMBi2bXE4hrOwY7BCIt2Yw6+SkDJsY93tVI8oM519wzg
         7M3g==
X-Forwarded-Encrypted: i=1; AFNElJ8i4A3r287G4+kccByurzbbpOc+HqvKVgcD68X8larfS8tUoy9x5rdBhwUMQAPLugqDQcJV1XCT7zEVmLVqXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwR581JNCzPeus18frpPuKLMdQz0iITWhN0SBy28tZK/t4k4TPp
	M95sMjJ4RpNcJ06sv0M58s4/PZZvGdW4YS+ohSEv15H/GTgTukYv3498K+6XBDQMCk37EZDCrwL
	EN0M6MdKu+6fukoekgxgj702LTVdzW/zXgDlixN6KC6AlIElrh6HEWLxtmUGvXidaIReqYJBDkf
	Q=
X-Gm-Gg: AfdE7cmNV7KdSq8b76Uq7QeqiD5pOOznPRBB1TQWDNIvyL0vfQNzU5SRTCzTDe04n0x
	jZm1eq7PtJ7vXtStsXUyZ3zzgLstVkxaRhW45P3gP8y0e0NP/irPyvD5ZrvUQlGxYvKxG33GSdY
	V/tJMy3R4Xyfoq+P+0+A7uqQ+k3Sv2/4yjjgeNp73+xdsj+sxtcOwrZChy0VfI/TMV+95Ykm7aQ
	JzUNaFKjYd7MWDTzdoCSn3sHsyJpPLOVvVuFN4/eQ3h/GQtmhUrtdkqUSWtWNBiZGbT3uZjDAlG
	+Wyv18f2uXoC6o2IyVF+fN6qwfP569o6lR/jOBTh2wlWpYbTpYXY01p0p187Ho8B1cyN73crDrx
	xzpIZJwjZov5AiwQY7ZsxRf7Nf6mUTbyswRg3X5h8bf77VLKRFBvEvU2DuQ3ziw==
X-Received: by 2002:a05:620a:25d3:b0:92e:5c56:727a with SMTP id af79cd13be357-92e627fa3f0mr909677685a.60.1782857297811;
        Tue, 30 Jun 2026 15:08:17 -0700 (PDT)
X-Received: by 2002:a05:620a:25d3:b0:92e:5c56:727a with SMTP id af79cd13be357-92e627fa3f0mr909671285a.60.1782857297248;
        Tue, 30 Jun 2026 15:08:17 -0700 (PDT)
Received: from [192.168.69.212] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4756636cf26sm9903482f8f.19.2026.06.30.15.08.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 15:08:16 -0700 (PDT)
Message-ID: <9c94a0b6-a2e6-4d3e-872d-b1d3954a4071@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 00:08:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] mips: replace linux/gpio.h inclusions
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Frank Li <Frank.Li@nxp.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Greg Ungerer <gerg@linux-m68k.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>,
        Yoshinori Sato <ysato@users.sourceforge.jp>,
        John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
        Linus Walleij <linusw@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
        linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org,
        linux-sh@vger.kernel.org, linux-input@vger.kernel.org,
        linux-media@vger.kernel.org, netdev@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-4-arnd@kernel.org>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@oss.qualcomm.com>
In-Reply-To: <20260629132633.1300009-4-arnd@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX2hgU4H3nkOwP
 Du2bkkTwa91hDACqxNiKdBl+VVy5RfEyYPGuwknybVxFSw01J/Ah2Iz+gz2CV2H4GbKHMth1Anw
 2Kqih63AmZFj4wPuKtLDdrpfM71XV7Q=
X-Proofpoint-GUID: EnWEzA1IWKVjhvhfVrNS3oH2RdNDE_CW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfXyP8ppgkSnUne
 UqVrtrtIOIkGYqm5D9C9bN/PzCI8WayyWX3YFWZqWnSxbeKwBVbiWyXp0EapRKen4bw/8kUHtDA
 QGvyCuqUlLf9Tz+2HkfSoTf5CBUt8zvCsab05JymnbdV4jM3QCYZtxOjvuf4NHGmI4Tv4Zi0/FE
 1YDyKd3v98Ko6pE0Uh07FzqansNKgnz+Pzd2ViEhWKvN1csRJoTsIgVxqA41M0atvri48vlm2Rh
 R0MrnEie+yMu8vIaangRl5brm4KoE3biAiMoamjC1nnSPibeI3+F9BbeIyMAijLuSSn5dMDdQ4Z
 qm/tlq1G8Z1n2tvi3GhxvxafREao+9Xb2SeSOAa65CWJOLMFcFTknGAasMPDkH9lDyjq04IyGoX
 AX1cwFseqqfjR++h5EOY51vK+nScsIFliDqgQ3wnNCi0YMAzgBIJazHFN6L/fyBcDvPFzjiudNe
 l7rQuSwuUOMGpILcjRw==
X-Authority-Analysis: v=2.4 cv=R+wz39RX c=1 sm=1 tr=0 ts=6a443e52 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=4s3hRJSeHn4rkQlkrse1kQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=M51BFTxLslgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=1tSEMpTH9XP_W59IOagA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: EnWEzA1IWKVjhvhfVrNS3oH2RdNDE_CW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1011 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_150820_891942_17806475 
X-CRM114-Status: GOOD (  12.34  )
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

T24gMjkvNi8yNiAxNToyNiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBGcm9tOiBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPgo+IAo+IGxpbnV4L2dwaW8uaCBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWQsIGNvbnZlcnQgdGhlc2UgaW5zdGVhZCB0bwo+IGVpdGhlciBsaW51eC9ncGlvL2NvbnN1
bWVyLmggb3IgbGludXgvZ3Bpby9sZWdhY3kuaCBhcyBuZWVkZWQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAtLS0KPiAgIGFyY2gvbWlwcy9hbGNo
ZW15L2JvYXJkLXh4czE1MDAuYyAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGFyY2gvbWlw
cy9hbGNoZW15L2RldmJvYXJkcy9kYjEwMDAuYyAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGFy
Y2gvbWlwcy9hbGNoZW15L2RldmJvYXJkcy9kYjEyMDAuYyAgICAgICAgICAgICAgICB8IDIgKy0K
PiAgIGFyY2gvbWlwcy9hbGNoZW15L2RldmJvYXJkcy9kYjE1NTAuYyAgICAgICAgICAgICAgICB8
IDIgKy0KPiAgIGFyY2gvbWlwcy9iY200N3h4L3dvcmthcm91bmRzLmMgICAgICAgICAgICAgICAg
ICAgICB8IDIgKy0KPiAgIGFyY2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5j
ICAgICAgICAgICB8IDEgKwo+ICAgYXJjaC9taXBzL2luY2x1ZGUvYXNtL21hY2gtYmNtNjN4eC9i
b2FyZF9iY205NjN4eC5oIHwgMiArLQo+ICAgYXJjaC9taXBzL3R4eDkvcmJ0eDQ5Mjcvc2V0dXAu
YyAgICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICAgOCBmaWxlcyBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1ieTogUGhpbGlwcGUgTWF0aGlldS1E
YXVkw6kgPHBoaWxtZEBvc3MucXVhbGNvbW0uY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
