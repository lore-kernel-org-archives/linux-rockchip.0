Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85CAEC369A8
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 14:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LG4xy5+DtUOc3uk+e9UpcqduK7omakahNTYA2qJ6JM=; b=kVWDmVk1AWcXkD
	5vEARYEp03Ax3ug4UWWfbUTIQhermNKbGwCkDJWfZosT1Z/FB7SA6rKxxORMuxPGrraAVQrSIyO3S
	cfNOgKiYCqYnmOd9NGmdZXIduoi3GLyXjSsgZrsu7n5iPzBkzxS1vSw9fiCLv5hcVPd4KG2mlLvgi
	NWoL1pGRUmPfl182afwORmUVDfmb9DTAT51J/TlIzbcdVnrBo3bULTBOzHW1XmhxHWOD85g/fhpRj
	118b/DB3/rMSBUuuynRNiT8YjIZn9FYBCMuryOVPJWXs75CJLDN55Vf5AO43ep2NBeDaqj3AMpmdC
	SK1gCCnuL/t/nF9T9gVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2sg5-0000000Ao4b-48fM;
	Thu, 10 Apr 2025 14:14:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2sg1-0000000Ao2D-3sT6
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 14:14:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75Kja019670
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Apr 2025 14:14:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lce32oQFI++V3gENrPxZvYwnMyyQQciO4ddTSjTvVl0=; b=lDYgMBzwKpT1YVaz
	xm0sOkM7l45gCSzaGWlGsWQnVNvhsMVEU9EzjnmJj1GrlO9lLX75+txKmnnR8yvV
	QPdmMrqOnyFsDGZIlfXpmHXNdNwHE1n6o1hktO31mN14OXVRmgmmK2WdgBmX1Dx9
	zLFK4xH+COoRGZSbxMt4J6eIIUcCPukrfRadomkV6e2djegPrX1wfA1CBKmjTQuP
	dlWbK7VHTrWR+wYMHZqZwKiNVMRhTvfesH9nmQ54G+DzhCMIife+5uaqxTk0tFyb
	Y996FvTZfPMiI6+gM89KPLnbW1SzU5fH7mQQU8AvfgGR52P7bLsjetfOnWpO7bwR
	jFZ0Vg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrqah8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Apr 2025 14:14:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54e9f6e00so299683985a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Apr 2025 07:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294483; x=1744899283;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lce32oQFI++V3gENrPxZvYwnMyyQQciO4ddTSjTvVl0=;
        b=fs41v2r9U55BPIj+mbrmHp9Z40YO/OpdJVfQ6dbrodvLcMS6RDGuFIooVgdThg+eyJ
         NIpibs33tm643NrVDu4283eUPkeaZo5cOMZQmuV+qa20izDQ6LEycUwFgFAxQrdq51O8
         8vFC1pDGdE+MO6qgr4Vw3r4HOn+2Dfeijt7JeWDs0NEtwapUS+1hUHENHcyP6b2KAZXf
         lNKf1ocZMldPxk8nSL1dgYNh3KEl23Fv1RVDJcbERfJ5mOtq/UeM7HFM2CJk7lTqLxsY
         jNQtGIQgk6gyUyz5VW7Se1IlMefToFbvnvFnBPVsRxj1taq+Ij1zAhhQUjiu8IEhP5ii
         OEKA==
X-Forwarded-Encrypted: i=1; AJvYcCU2p4gzdlCxTgKtrR/kmyaxhljnD3F9sNF1HhI0N2uI2Vs/vRYv8q+6IRUyajta9tQhBFuumMQ6RsX5Ls0KZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDynQcK3QZFv42cSrQ/iPVeNGtzEbCZd8h5trTfQQUBWfAAEVm
	3obaZBVUa3GR1PIFIX4uY83VW9bMsu8icCUWV6gPMOEC2cuKsnIbZ5ZF7H76N//OwexsrIbKeHb
	31cvi7YHgoyx3EGhfYM54Yx/2Bhx2v3T6ScAo3IhFmIg4u8elIPIB7L6utCQz1pCmjCwJ9lo=
X-Gm-Gg: ASbGnctNWKlVVqSvqFB0HW0tkAbnk8opLOUGTmMa1GMjTXsd1al/T0m/f1Fq2MJKS4F
	wOZT0ukYcCRvjWFq8pAiMSAmBEQdvUVKp/LY8ElrIboMcEySWYfNa4uoRah2DUjfg3Ug5W0f60+
	yLWE6+nAskPcCMQAYtAgM3apzK1E4fisaMy1ZAbP2lQvt1JhdZIPyEw7bDgR4pSDLUn0sZe40lg
	gJFb0qlPEAWB3mya/14ZBpE+ohyxckBe54g5VCZiCSWWBlDpHVKGLv9AdaVpUj0lcvHZdB8rr/2
	HEdZpjEG4tKjw+NHsz3adtF28X5lfX4AuerUDBssivBDPec2TotFwW8tHCSKtfxQf4O4BvYWQw0
	=
X-Received: by 2002:a05:620a:4712:b0:7c5:a542:10a with SMTP id af79cd13be357-7c7a76604bamr427412185a.10.1744294483378;
        Thu, 10 Apr 2025 07:14:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlKeQtmurcUxSJLFNFsvzgIOZksryqV0lZXDe/Ak1oGKqZ5es+suN57szXtRFNrahXiCUAjg==
X-Received: by 2002:a05:620a:4712:b0:7c5:a542:10a with SMTP id af79cd13be357-7c7a76604bamr427403385a.10.1744294482871;
        Thu, 10 Apr 2025 07:14:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d4ebbsm5156621fa.73.2025.04.10.07.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:14:42 -0700 (PDT)
Date: Thu, 10 Apr 2025 17:14:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
        Conor Dooley <conor@kernel.org>, linux-rockchip@lists.infradead.org,
        Daniel Machon <daniel.machon@microchip.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, UNGLinuxDriver@microchip.com,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>, linux-sunxi@lists.linux.dev,
        Liviu Dudau <liviu.dudau@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        linux-renesas-soc@vger.kernel.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Viresh Kumar <vireshk@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        zhouyanjie@wanyeetech.com, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Heiko Stuebner <heiko@sntech.de>,
        Jernej Skrabec <jernej.skrabec@gmail.com>, linux-pm@vger.kernel.org,
        linux-mediatek@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
        linux-mips@vger.kernel.org, imx@lists.linux.dev,
        Samuel Holland <samuel@sholland.org>,
        Sudeep Holla <sudeep.holla@arm.com>, Nishanth Menon <nm@ti.com>,
        devicetree@vger.kernel.org,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-arm-msm@vger.kernel.org,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        linux-amlogic@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH 14/19] dt-bindings: arm/cpus: Add schemas for
 "enable-method" dependencies
Message-ID: <nmqw3wbmltbji4cwtifjbxkfm4uprwqvp2vdovnzueay7r26ml@eimrqf54mb34>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-14-076be7171a85@kernel.org>
 <174377856145.1313232.11316769002552655294.robh@kernel.org>
 <CAL_JsqKiduJBRBuRS364_bSjEfC_cvgyicZX1BwvNyb1+GVc3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKiduJBRBuRS364_bSjEfC_cvgyicZX1BwvNyb1+GVc3w@mail.gmail.com>
X-Proofpoint-ORIG-GUID: uotIU_l4ESOKxpsOaK7_LGbjlhEudr-S
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f7d254 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=lInoRNGhrZE9hIAi3NoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: uotIU_l4ESOKxpsOaK7_LGbjlhEudr-S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=676 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_071446_137515_9E50DF7A 
X-CRM114-Status: GOOD (  19.83  )
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

T24gVGh1LCBBcHIgMTAsIDIwMjUgYXQgMDk6MTE6MjJBTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gRnJpLCBBcHIgNCwgMjAyNSBhdCA5OjU24oCvQU0gUm9iIEhlcnJpbmcgKEFybSkg
PHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4KPiA+IE9uIFRodSwgMDMgQXByIDIwMjUg
MjE6NTk6MzUgLTA1MDAsIFJvYiBIZXJyaW5nIChBcm0pIHdyb3RlOgo+ID4gPiBSZXBsYWNlIHRo
ZSBwcm9zZSBmb3IgcHJvcGVydGllcyBkZXBlbmRlbnQgb24gc3BlY2lmaWMgImVuYWJsZS1tZXRo
b2QiCj4gPiA+IHZhbHVlcyB3aXRoIHNjaGVtYXMgZGVmaW5pbmcgdGhlIHNhbWUgcmVxdWlyZW1l
bnRzLgo+ID4gPgo+ID4gPiBCb3RoICJxY29tLGFjYyIgYW5kICJxY29tLHNhdyIgcHJvcGVydGll
cyBhcHBlYXIgdG8gYmUgcmVxdWlyZWQgZm9yIGFueQo+ID4gPiBvZiB0aGUgUXVhbGNvbW0gZW5h
YmxlLW1ldGhvZCB2YWx1ZXMsIHNvIHRoZSBzY2hlbWEgaXMgYSBiaXQgc2ltcGxlcgo+ID4gPiB0
aGFuIHdoYXQgdGhlIHRleHQgc2FpZC4gVGhlIHJlZmVyZW5jZXMgdG8gYXJtL21zbS9xY29tLHNh
dzIudHh0IGFuZAo+ID4gPiBhcm0vbXNtL3Fjb20sa3Bzcy1hY2MudHh0IGFyZSBvdXQgb2YgZGF0
ZSwgc28ganVzdCBkcm9wIHRoZW0uCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJy
aW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwgfCA4MiArKysrKysrKysrKysrKyst
LS0tLS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMzMgZGVs
ZXRpb25zKC0pCj4gPiA+Cj4gPgo+ID4gTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtl
IGR0X2JpbmRpbmdfY2hlY2snIG9uIHlvdXIgcGF0Y2g6Cj4gPgo+ID4geWFtbGxpbnQgd2Fybmlu
Z3MvZXJyb3JzOgo+ID4KPiA+IGR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnM6Cj4gPiAvYnVp
bGRzL3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xpbnV4L0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2MvcWNvbS9xY29tLHNhdzIuZXhhbXBsZS5kdGI6IGNwdUAwOiAncWNvbSxh
Y2MnIGlzIGEgcmVxdWlyZWQgcHJvcGVydHkKPiA+ICAgICAgICAgZnJvbSBzY2hlbWEgJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9hcm0vY3B1cy55YW1sIwo+IAo+IEFueSBRY29t
IGZvbGtzIHdhbnQgdG8gdGVsbCBtZSB3aGV0aGVyIGJvdGggcWNvbSxhY2MgYW5kIHFjb20sc2F3
IGFyZQo+IHJlcXVpcmVkIG9yIG5vdD8gQWxsIHRoZSBhY3R1YWwgdXNlcnMgaGF2ZSBib3RoLgoK
WWVzLCBhcyBmYXIgYXMgSSByZW1lbWJlci4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
