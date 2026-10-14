Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A0DCC6B2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 16:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4+99Pp9zRH1AT/FBLnzLJN55iDD22NzaaHkje/DQcE=; b=PV5rKSZal9f7j1
	N5/9YO6tUrf4S/u4CZhvFuJeQv3D5vR6NM73XAWZO1g7LRj0OiN1q/LR58oFO0V0EIvrYlhYjOyce
	NKcpAg0E02ZC+ihcOWXrUrUDLnlFx+JLYwo/Bsm+diZybU9WdoBNjoUhWCMU6HXBkUgvibkXwAYQf
	DvIhwAaONSSWXavPJYYzZfBTtJqXJJrncIIiWA+yvR2GEJMT8qMuLce/qmKLNSAKsNmNdTHWLA7EZ
	lxUCStIOo0m16cqveFgh2Iu7ZXHB/inKSMGnhtH0jbkJCRyPdB0Gf3jsafc+z7h0XGq2y4meX1rZO
	HLmZP8JORo2RPClLiZHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1xq-0000000G0JV-2xVI;
	Wed, 14 Oct 2026 16:36:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1xi-0000000G0HH-3QaZ
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 16:36:25 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69EFMp1g1682879
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 16:36:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qZE4atZVuUnxe4gh8yTrME7HVReQ6qljuMq3IYiqA/Q=; b=NTMjNEvYqdTCrKll
	f6XgOd60FLUu0XdMAj4D7IwL++ZnvVk0xw3E9JzHsXJ5cLwEOOQq3ip4lcEj3Qsz
	FQjLfPpM9zxfgv3zGMEYeSPgpIfndEwxOrtxSneycTU/s2FeHk06HmPPMYTlx3Ma
	VorPWR5d7vtllaxOSeBTeEsBifuxva5XOLjtdg/zpLiQ7g7soCORo+i8zsJMNwgG
	YxXHxU7XBSeSJsREwCIvF6zEhvS6aRW9IHeaoxldVxCCf5PaiaNXBVxwvpYdbwWi
	wKzzxsCyVjL0f6aT2QyitUg1BKR992QBb+EQK4OC9L9HmcVsqp7eFdoRNUTkUea2
	QRN/qA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hacb009kj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 16:36:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93cc50fb0d2so83792385a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 09:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791995777; x=1792600577; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qZE4atZVuUnxe4gh8yTrME7HVReQ6qljuMq3IYiqA/Q=;
        b=G3hIdnTlhVJ/aaaN+zvjTRzDFa8/ZkSNirwn8puTwC+6t5oipMT+Wn3yuqPYS+56MR
         +uNFMf03vUuMbXAcVHHklv23QHktjzJj4w5gaTC7KnyQzoitPjTu400/R2h9++Vme9zJ
         tMcbwqKb+LRVjU0bko6A6qPvC2q9PqPg0x84+Xej96IRodywuvIg/otmoiXi1atyULRG
         Kw+YEyVYysOM0g7bp4MlvfixP2PTIALNyGBQQj6H9gDx1oy+3b30fZINNu4EazQHkbCk
         SBALfaNJ69irjkymw19Gnnm6BGgBR1z7v+GIkaG3pg/sNUeqjly7alpMXS0Vk2KP2dHI
         yWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791995777; x=1792600577;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qZE4atZVuUnxe4gh8yTrME7HVReQ6qljuMq3IYiqA/Q=;
        b=S03PGilOvjI3f9BbX/cvcV0Tpz5luXgyZAkmhZaeeCN/1CNteluWpkr+zU5n3laIgx
         PUjT5zP2uN7Uk/FWBtBGciQMw3/EZ6Ef7p6MOUUNSVezOFwKNqFWSyTJm2aoQFXJM4D3
         0O7jJCIPmlRP8TKpaE+B5vfNHUkYjJGr4m+/nBpfmbW9In0PmKsj71E2xWfEQtCdOGq2
         go+cswgg6V59ls97MYtSmWKZcrrAA50J3XWfqb90ecCJg/evTTr30Q/SUZXHndKvGYJg
         UwmcToWf1nOXqUzTCh+TwOil+ORiO3IwrR0T4aCUCphARjzu2n5eUr4TGUJvXENpBOJj
         B+lg==
X-Forwarded-Encrypted: i=1; AKwUvBwSA2znCl7uZSenyQVB6pZhRX2LmULN6tYXbtDsPqrkiWf7ciKqAvdsN/1secOIiBmSPrpfaeT2DfYhoohNIw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJJxWly0vJKbQWkHM/pTy1M0hti4RlTaBdDZgqNr1zSBG/E4IBT
	QwW+Jub8PayIG+oRlGXAUEBkoPlj6cbJkkb1RkG95L9aT0Sg8GZP2VNJLoNN0CBgWqGVEAV8rDW
	SfZfmbYqOWmMIK6j+zSLpRIG2cqAxQoyZKr4MQPIwI5hyvbA5fk0UDJ9BriCcYwvp6jZJM/e44i
	A=
X-Gm-Gg: AYBFou3vVGiwHa6g0EsTl6Z5PMAe6wfhX3Ifnf3KnjTfC/E2yzNNNx29/WYWfK5zc2m
	J4sHov3HKUnSI9BTNdH/Y/5OxVY8qxbmER/dPneetKic5BRYaTB1cescV8UOuRPusnR2pBd6whz
	jFicFsmJcc8akaOs9/VUkwImEuTY0pdai99Wv6Wd/tQ5VRvWqZOo/mbHKAHNFzGeA+ljFV8ZH8S
	J0xH0FWdWylYze7jOZS0DUyZLh1ySYfHPbgCFyV6Ath3cFfmFQo+eIN+9+FkX/WXeHCIjzx5nIF
	ssHy+jCYMlk/WjICI1VsuS7IuvkihkEOshnuOPKpRaEO5a+cGAMBwpjMyuAVUfWqODHWJUuve+z
	U7pInjRWMCN6dgGBiiVZxcw==
X-Received: by 2002:a05:620a:3186:b0:939:8bc:8826 with SMTP id af79cd13be357-93ebd10c0e2mr3128588585a.2.1791995777408;
        Wed, 14 Oct 2026 09:36:17 -0700 (PDT)
X-Received: by 2002:a05:620a:3186:b0:939:8bc:8826 with SMTP id af79cd13be357-93ebd10c0e2mr3128568885a.2.1791995775873;
        Wed, 14 Oct 2026 09:36:15 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b20386327csm1289977a12.18.2026.10.14.09.36.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 09:36:14 -0700 (PDT)
Message-ID: <b4c0761b-34f2-42ad-97e7-ab34ae776281@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 18:36:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: usb: snps,dwc3: Fix downstream port
 numbering
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Chen-Yu Tsai <wenst@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai
 <billy_tsai@aspeedtech.com>,
        Michal Simek <michal.simek@amd.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Peter Griffin
 <peter.griffin@linaro.org>,
        =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>, Yixun Lan <dlan@kernel.org>,
        Troy Mitchell <troy.mitchell@linux.spacemit.com>,
        Minda Chen <minda.chen@starfivetech.com>,
        Shyam Pandey <radhey.shyam.pandey@amd.com>,
        Wei Yang <yangwei1@eswincomputing.com>,
        Senchuan Zhang <zhangsenchuan@eswincomputing.com>,
        Hang Cao <caohang@eswincomputing.com>, Li Jun <jun.li@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Roy Luo <royluo@google.com>,
        Yang Xiwen <forbidden405@foxmail.com>,
        Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
        Robert Marko <robert.marko@sartura.hr>, Xu Yang <xu.yang_2@nxp.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stanley Chang <stanley_chang@realtek.com>,
        Ze Huang <huang.ze@linux.dev>, Aswath Govindraju <a-govindraju@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        asahi@lists.linux.dev, linux-aspeed@lists.ozlabs.org,
        imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
References: <20261014082037.1774672-1-wenst@chromium.org>
 <20261014082037.1774672-3-wenst@chromium.org>
 <7020a7a6-332e-4fd0-a659-d82eb768614c@linaro.org>
 <CAGXv+5G1kgyumbj7wGf6rPFbg3spSO0zYmEkn-hZT4qUdJbytA@mail.gmail.com>
 <03375a31-0ac6-47a4-b0dc-6327080e1622@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <03375a31-0ac6-47a4-b0dc-6327080e1622@linaro.org>
X-Authority-Analysis: v=2.4 cv=VKpIDNPX c=1 sm=1 tr=0 ts=6acfaf82 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=auHUQpDKApYGa_LtnhgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA2NiBTYWx0ZWRfX/G93DZ1m/xni
 yU/EetM7u8lmS5ukZYw3Y1Fieybxc/KPKZAxEI2VRwSc+o1DIdxjIt4myUVJR/oUmyLuyJJp9pu
 MvDaduaXxMko/WigUApOVGl8x5zFASM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA2NiBTYWx0ZWRfX6dFNkdTYQwrZ
 07vfk5CIwXXbnI1c2R72gVSiwAuiaDSxCQkqRO+mjuyH96sQ59QnsUxoKVggA8kJytFj52PQyg0
 S+bXgkwdfB0uWOdt/yikTvNEpfa7n8hXJSWK3Ymx0JncSRphhRNg+0k+EXju4VoqpmtjBzdYP59
 hUse8KNEMsRbs7A77OngJsYAqqY4zaV6i88F532mEkD3X/rT8+8sHmLS+tzflz7FCVHbVgvdXQF
 zodtkgcgmuWfVTtG736PzeKM5z2XVILENwmwTOBoEJl4GOT/3gTSS+x0nxVu+UoKvqMKPAq8Ee/
 IaRRYXJk5NZBKff6SHc1WT1epayYSXtJDgCjpOmHvTL7DtF1RelnM+dhQtMRyVD1UYzrFGkqEM9
 Yvsy2mSiv+wl1RI+EqN1zpFYWIjibB8j442AWAqcGpwDtvnZ4oQwXmhgWT2Pq06dWFLvRRaA2dA
 U82qgP3QpQOwtlV3lZA==
X-Proofpoint-ORIG-GUID: 5YbdIm4oVMmv2O2o5wXuYqOLqKMiGVfU
X-Proofpoint-GUID: 5YbdIm4oVMmv2O2o5wXuYqOLqKMiGVfU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 phishscore=0 spamscore=0 clxscore=1011 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610140066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_093618_853857_AE70821A 
X-CRM114-Status: GOOD (  16.62  )
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

T24gMTAvMTQvMjYgMTE6NDQgQU0sIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+IE9uIDEwLzE0LzI2
IDExOjI5LCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4+IE9uIFdlZCwgT2N0IDE0LCAyMDI2IGF0IDU6
MjjigK9QTSBOZWlsIEFybXN0cm9uZwo+PiA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4+Pgo+Pj4gT24gMTAvMTQvMjYgMTA6MjAsIENoZW4tWXUgVHNhaSB3cm90ZToKPj4+PiBU
aGUgRFdDMyBjb250cm9sbGVyIGNhbiBvcGVyYXRlIGluIGhvc3QgbW9kZS4gSXQgZG9lcyBzbyB3
aXRoIGEgWEhDSQo+Pj4+IGNvbXBsaWFudCBob3N0IGNvbnRyb2xsZXIuIFRoZSBYSENJIGhhcyB0
d28gZG93bnN0cmVhbSBwb3J0cywgb25lIGZvcgo+Pj4+IEhTIGFuZCBvbmUgZm9yIFNTLiBVU0Ig
ZG93bnN0cmVhbSBwb3J0cyBzdGFydCBmcm9tIDEsIG5vdCAwLgoKWy4uLl0KCgo+PiBJTUhPIGhh
dmluZyBjb25zaXN0ZW50IG51bWJlcmluZyBhY3Jvc3MgY29udHJvbGxlciB0eXBlcyB3b3VsZCBi
ZQo+PiBiZXR0ZXIuIFRoaXMgYXZvaWRzIG1ha2luZyB0aGUgVVNCIGNvcmUgYW5kIGh1YiBjb2Rl
IGRlYWwgd2l0aCBtb3JlCj4+IGV4Y2VwdGlvbnMsIGFuZCBhbHNvIGVhc2llciB0byB1bmRlcnN0
YW5kIGFuZCB3cml0ZSBkZXZpY2UgdHJlZXMuCj4gCj4gSSB3YXMgaW4gdGhlIGltcHJlc3Npb24g
dGhlIHBvcnQgbnVtYmVyIG5vdCBuZWNlc3NhcmlseSByZWZsZWN0cwo+IGFuIGFjdHVhbCBwaHlz
aWNhbCBudW1iZXJpbmcsIGFuZCBjYW4gYmUgYSBsb2dpY2FsIG51bWJlciB3ZSB3b3VsZAo+IHRo
ZW4gbWFwIGluIHRoZSBrZXJuZWwuCj4gCj4gSSBkb24ndCBzZWUgYW55IGlzc3VlIGhlcmUgaGF2
aW5nIGJhc2UgMCBmb3IgdGhlIGJpbmRpbmdzIGFuZCB0aGVuCj4gY29udmVydGluZyBpdCB0byBi
YXNlIDEgZm9yIHRoZSBYSENJIHBvcnQgbnVtYmVyaW5nLgoKSSB0aG91Z2h0IGJhc2UxIGNvbWVz
IGZyb20gdGhlIFVTQiBzcGVjIGFuZCBub3QganVzdCBYSENJPwoKS29ucmFkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
