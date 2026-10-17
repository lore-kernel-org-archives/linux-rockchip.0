Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7913DCCF2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 20:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLYO6o51RH+MrwlcvLGV3nJFodGhltrnnML2fQiy2dE=; b=ozZ0dvzbT1wl3E
	cSdgW3B4sdAlm+d/rR/C0ocQzMS9krrxD8gnpyCjzNjWdYGy9/sOHEA+0RFsEIjnc7YvDr8ewe7Up
	uQrvLJF68y/J3NkZcgaumOfbr5CFN1Lhqq+RZ7QhW3kj1RYdJkFABhY5cU13vZKf37gqWtUsZfHiW
	15V9xQqLD1TYBFy6p/T1SmzA54Z5GW26jORj0+b9PmaOBVWSR3BgGAhyYu65H3Hl6oTJvoFUMZtuG
	w/6cubiY0kvuM/MlFFILlSarWG0apJ4RQz1YSNP6puAvLF/K+niJ/mhjSRAkvo7t5O1p704d5QzGr
	Woc/21ZfTAgpKGecNOkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIBA1-00000005DYc-0a9B;
	Sat, 17 Oct 2026 20:37:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIB9x-00000005DYG-2JIT
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 20:37:43 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HJ0CL81868287
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 20:37:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MJhLBMHk/ItFuz5dehzrpc+coad7k3fTUmxn+/Q9g68=; b=K0krEDSIL6zHn2lE
	yoKUGHiT4EKqE5+ouunqQbWLzZMk4kU8DxJ3k3tLIZYxta+wQ58t3amSWt1+JXz9
	qpjvcnfRiajr5XUdiPj/5/6nFOcpiX5bGXMtzte9xdsMQ4l5kxltvLYyjxKrYlEn
	AMX//nKa7MiMaPp5bvE6LD95mNtWTzAKa19T0W5s17opSnJneoZqIlL1Wdp+RTt5
	2QzCN94UwSt2PN9xnnulxNEaJruI+Tev7ioMY0hTSANeHtj1EDJdvN64TSyBDspw
	ZxV4wMiygxrP/7XiZ2LTwY0teuYZw6Q5EB5A9xOUEaylj/4l/FAYP1a4QlAiP1JJ
	3XYyOA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc1839qy7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 20:37:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-934963b2bc0so193158985a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 13:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792269450; x=1792874250; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MJhLBMHk/ItFuz5dehzrpc+coad7k3fTUmxn+/Q9g68=;
        b=CIFiwLVegfWJO4ZlmJdThMszW1PTnwvgUTNbH5rsemwPbElXqO6n6IniP5ZUjC3rdw
         0ZHuZ2Z1CjJ0cKorpbOLEUKqVJlZQOfSg57BxKL8gumYl96XzCLihTEaEMNIhLb1VX2h
         I4XF40Bqh9Q9CXgqu2BBPsZEy25Kr/4ON3jYyRZHcrICE3PJPWeh85hoGRMT04lfs8Rb
         TU2uIhm8qu/PzHtZ950089L2lT9WJ6sgaUVmAfxy9VeJVK1BLHXgwZt1Q2D0+9TnhDH+
         PsPIgmIdmVi+776cJ0VYTUtJPgGbUKpz2mObZ/LVVBZWE8rI0ozdR9yxD2OBp6YSb8o2
         yqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792269450; x=1792874250;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=MJhLBMHk/ItFuz5dehzrpc+coad7k3fTUmxn+/Q9g68=;
        b=YgQ64FNJDdpPXhbQqkHZx7aLOkq0IMXpoQf1jb98W6CQd7Fvj+vEpgIFhLCiTs/N40
         R7AW6nT4JBtJZTih5lhVVOY07FCH4HRkMuSI5px79FknfW8/AYEG5xIgXfkPIdlYUKGD
         xoJUErF7cYKwqN7TFt9XkeuFPyKJPAOPQs+3KYDTzcaozio4fgLYOPvKkkdMsCc2FXPR
         mP0E8ZddO/qmlqQHhseOBpyaU7/BihdFkKtYqjuwbaLf0T9csw9mDQ/8iwRgbkhGI7/M
         GCNXGZr+oQGZ2kM2Y/RF6FQSSDDol8Ep0YDKzWdoZESxeHOL69Gsc31NjuVX5kDVgarE
         DGNg==
X-Forwarded-Encrypted: i=1; AKwUvByAxfVX88pvZAiKp0A0IGfgMsGN9GciHdLB85V4QInaB0P2754IYii7UUY8ScSvIvaOOzAhK/+R7zSQSODJxQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLonECmshejhNj29Npz4X1naCKiCqAfcfy5BvGNhRnyUkfUGgFT
	gWsfgL8QZdRfKEaOrGpHMBeGztGoNYcvgvvRzPePOic40mxiOSNuI3H45fwRr6aXdJvRnih/xjJ
	QjtONURIj9dT/n4amSRPB2akwWYrxlgBEpav5iZUFptLdZUllT/FvatYuxhK56pwd7/bWUfQpxB
	U=
X-Gm-Gg: AYBFou0kJEl1gZx42rFzrKwqL1w2aBsWENMK29Eym/0XCxIkWWQJmbgOo+L/ZrSp3UA
	/YIrbi94iOINt+Gub8k8GpQacF4+/8T9hA/TrM2u7toaTAGctrac2Y9MRabcWFz5LPctF3k4bU1
	Ee7i78fPKPA88S0agmE1f6HPc/WjvbpUl4JYTxqqCjKQENDb1hpuYvjYnkGaTd5v2siOimHU94Q
	jkd3qfKc+r/cN8fDw+yco25bYwfORTW+dKiX39bDUkyQzcDgqZhfreb83s8QOHX2f97tW1Slhae
	rzzGA14Fk0TzpmdfqHbZ0+Junf9sber2y8WhZfT2ZCi0bADnhgOYTzjPtZOdVtBsPFXO7i+B+ga
	yufTyCO0G+cVn9TqXWmg9Cq+N40VU5vX7aVORrQMm0CkVU3MTOXtOc1pTQk34hlzhpvsji4mJ95
	AjySbShQwXXrRY
X-Received: by 2002:a05:620a:454a:b0:93b:c58c:d3be with SMTP id af79cd13be357-93f29d42f1emr640284385a.37.1792269449800;
        Sat, 17 Oct 2026 13:37:29 -0700 (PDT)
X-Received: by 2002:a05:620a:454a:b0:93b:c58c:d3be with SMTP id af79cd13be357-93f29d42f1emr640282485a.37.1792269449235;
        Sat, 17 Oct 2026 13:37:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ab16e6b861sm15582451fa.21.2026.10.17.13.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 13:37:26 -0700 (PDT)
Date: Sat, 17 Oct 2026 23:37:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-firmware@kernel.org, linux-pci@vger.kernel.org,
        Heiko Stuebner <heiko@sntech.de>,
        "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] rockchip: add PCIe3 PHY firmware for snps-pcie3
Message-ID: <oafuwy3x5uybkcmrmk7nbtnakbbt4aiiyrduqalhifai6f3prf@cjbg65wpvly7>
References: <1792049275-83785-1-git-send-email-shawn.lin@rock-chips.com>
 <cff4d453-2662-4f6a-9bf7-cb6e34df640d@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cff4d453-2662-4f6a-9bf7-cb6e34df640d@rock-chips.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA4MiBTYWx0ZWRfX/ILe0pl0vCf8
 V9Hn+eteE+mR/D3dB0ykXKkQzBhxZUAYlxH3/vKLL0ET0DpTw2ofRwRxP+q7HKQabrLe6UJnxvR
 6gA8uG8l60KXQQCTMQXPGLAWBqjdkx8=
X-Proofpoint-GUID: LGWjM_qWR_pfC55gjoHc3BTbMztMH9dG
X-Authority-Analysis: v=2.4 cv=Bu8IUoX5 c=1 sm=1 tr=0 ts=6ad3dc8a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=p0WdMEafAAAA:8
 a=s8YR1HE3AAAA:8 a=Fm5Bng6jeHhnGR7Go6kA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA4MiBTYWx0ZWRfXwKPlGNoZi0oP
 Gq42Ak7FIdNgYwicbEYI4CU3kyyOPEaD94m3H5qrkdxrppUVQdVF/ZObtlH0qUgvmv5ADtTqsC4
 l5qltSQMlgAlCWDnXLogZmf35p5aRIJx/QGSbjzDdM7sUfLucN0DAEamWUxS6ilfA/IAet8Xvul
 Xykb3suZZAm7/42WaaezSF2SvmFTRC9i5hACaJYQmtUGjqcViBADuKB5jZrQCw/aE+q6IAVV3YQ
 mRkaqS3Rk6ZKw5P9bFXA8Xgp0/NbQ7M3eqsrCvWybYkpO92rzC5mzADKu+5P0LOvLRHY+bVAfny
 htzZFnjJ239AA3esU297POmPf7NyZU322o97qeBFvUW1ndDGO/8mGJhaNocdk9AUUEco/BJhBPx
 HxCfUY1vVdcV03N7WNY41bQArbMIJofPDZ1GdfFpbiwgS89nLioLjQYFYu7sFWSidnAxk34FM76
 shk4Hw7Mt4QSaSqeSMw==
X-Proofpoint-ORIG-GUID: LGWjM_qWR_pfC55gjoHc3BTbMztMH9dG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_06,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_133742_439678_930F3A35 
X-CRM114-Status: GOOD (  13.17  )
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

T24gVGh1LCBPY3QgMTUsIDIwMjYgYXQgMDM6MzE6NTNQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFtjYzogbGludXgtcm9ja2NoaXBdCj4gCj4g5ZyoIDIwMjYvMTAvMTUg5pif5pyf5ZubIDE1
OjI3LCBTaGF3biBMaW4g5YaZ6YGTOgo+ID4gQWRkIHRoZSBmaXJtd2FyZSBiaW5hcnkgZm9yIHRo
ZSBSb2NrY2hpcCBTTlBTIFBDSWUzIFBIWSwgdXNlZCBieQo+ID4gdGhlIHBoeS1yb2NrY2hpcC1z
bnBzLXBjaWUzIGRyaXZlci4gVGhlIFBIWSBsb2FkcyB0aGlzIGZpcm13YXJlIGludG8gaXRzCj4g
PiBpbnRlcm5hbCBTUkFNIGR1cmluZyBpbml0aWFsaXphdGlvbjsgd2l0aG91dCBpdCB0aGUgUEhZ
IG1heSBjb21lIHVwIHdpdGgKPiA+IGEgc3RhbGUgbWljcm9jb2RlIGFuZCBmYWlsIHRvIGVzdGFi
bGlzaCBhIHN0YWJsZSBsaW5rLCBlc3BlY2lhbGx5IG9uCj4gPiBSSzM1NjguCgpUaGFua3MsIG1l
cmdlZCBhbmQgcHVzaGVkIG91dDoKCmh0dHBzOi8vZ2l0bGFiLmNvbS9rZXJuZWwtZmlybXdhcmUv
bGludXgtZmlybXdhcmUvLS9tZXJnZV9yZXF1ZXN0cy8xMzA2Cgo+ID4gCj4gPiBGaWxlOiByb2Nr
Y2hpcC9wY2llMy10MjItYzhnMi0xLjYuMy0yMDJhLXA3LmZ3Cj4gPiBWZXJzaW9uOiAxLjYuMwo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNv
bT4KPiA+IC0tLQotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
