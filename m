Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB0C5C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 13:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kE+L6w6KDl7MHHP0VVHR/HfGtf7W7CjbBQ1iaa7Uu3A=; b=kNqNouuqU4jruj
	FBLo/S/gu39pt7waibFGRUXS1Rbw3MkibyU49QzIx1J9Pq3WD++PIZzv1JbATUIScmJRqse/9hlhF
	XOSyNczY+KUx+leeKJQmj++w+XE8lEyC7gMvL2nm+JJGl8wPfdAe7DIKxzp9Q0LXXIZceGyeKh+tm
	aQj4B0bXREylzQCTbaNb55YgPnzFF2ZEM3mZlLMNpfuRVMF0LHFC6/SQRbCvExtgYMfmEsxHzLuYR
	o1lSqOOhCzhvOD2aA/efRbNoFknBSkp2Ze9BfR1WsYw/3vYLkXQpWzZFE95H1nqCB4f0gaUbgar5l
	oOWsiW12pKBOIwDAEwrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9joc-0000000B83Z-1CXo;
	Thu, 24 Sep 2026 13:48:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9joZ-0000000B82g-2JwY
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 13:48:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68OClVg32225208
	for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 13:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gIzGgpbn/bLfRecbbJR8idZ+V5oVFq52ZNmGReij2M8=; b=eHjiz8y8YIHa5or0
	11zmYv8N8YFWNIrLMP+nSz2/CY2JsZMAGAiyHU7KTwUOLrN/RgQ55IKjEboEug1E
	nydY3hdgllD8W4Mbr88/Vb2+WaKgXhFBIxOTgRIgZ0m1mdrkgnEUJ4ZQ3yEAZh/n
	u534i+M34SCuyNfiBEd+Sei3pRJLNbufiIlZqP1o3sJIz6cTwDK/fAjOqRTU8T4F
	lU+6mFAQdEnJEAuk+6PGMgD1LnD72JlZtJIFbFDz7ulf1r9gFBFFty2DO1wwRiOt
	y4aPrllNI8TZVUbHydTUVIQUDEoW6IWah+KSKq2AJDUEVqfPwzQhEAMUr/0r5QHX
	WbYPfg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw465089e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 13:48:42 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d001671a54so20359775ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 06:48:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790257721; cv=none;
        d=google.com; s=arc-20260327;
        b=GCXocUJKESJgi6ut5oYBJnGmLXRnvRmikSI53ZOV7rB1d2jdmyvP29vnBvmbBYtW59
         h3cT6WfDh4QHN7KXQs5H1jz6dtUGOS0UfjKPi2rrYoApyfTmHKU+CCO8f9STCjMFnD4E
         bhTQJtXIyZMJazLxqt57P7f4RzaUI+XpHFHgi7LXdmydEC1ClInjo0613QVYDqwE8X0B
         4lXUukh7tm2+0QitJmacE8cqxeldZEpuTDUU67Ev6CVtD/mmytEt4dFwavePPVv4sC67
         oOc5LGNaYf7oOyJExLNoF/pIEgGv15+yrwY9RNKMz7iuHRbC3qO62j7QHxR+sTTf94MI
         Kpcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gIzGgpbn/bLfRecbbJR8idZ+V5oVFq52ZNmGReij2M8=;
        fh=uxugTKfGVrNX7+xLiw7Bwb53S3ocK4L1rqSMleJv89o=;
        b=QoUc82f9UlMbUD7KEFFxq4zOMrnZqaxbguysG38gSuAeLMHwqvnWtfvxY0nzHMCNMz
         0NXbPTiYvKm0MuBKQ8DJTtfaJqGko6bNAjPtXcG86WUIJ4F8aGl2g0/diJbbKu1KlsU1
         Cqets2xrbkcMvxYzGUd5j/vSw+vg46owuU9ia5jrKxpxQG/4THYMQWXJ0knIAySY/Ajs
         09GOV8H8RBTDI9DQ1f1eSwK7KNqr3JqrcgWTErgSR6yjsqaONt4873Nwr22xiFO+rA5z
         6bUqcLwywvnKfYKC+ORpNT+zInejdoHr/sNpzVoYPT3tAiTbKgLHxBgLIepZiWvGNEbj
         O9Sw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790257721; x=1790862521; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gIzGgpbn/bLfRecbbJR8idZ+V5oVFq52ZNmGReij2M8=;
        b=DdJS1gyWaLFXYPgHQGXBc6FeMaYGCd7gJ9QZQKCwkcfln02DLXeKS32/m8GzgL6Lzz
         jl9eK4n8asV0HE+EugP5DRzMprPAzJoqtPaHctcm4tbqRND0mVLeubCLxjxKSwVb1wsx
         MoZmctp0KcBg9mMgXC184tTwfKgQdT4Zrta0TNpqc8DkBqzx7gmw+y8aD+tkryuTFX8o
         yFA+bk48Me2dxDt1iQ5etVuEGO2qDe1ysLI070Yrwiw6tJLO9TijPF/fahC1shG6DxoE
         EuuUHenhwbRnftLzUaX7zwhcE/xDGiZZfKZKWJZiTbwdU3VFkBl0dSD2NnAsga20wgXZ
         9bfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790257721; x=1790862521;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gIzGgpbn/bLfRecbbJR8idZ+V5oVFq52ZNmGReij2M8=;
        b=FlIa5kD9RBDI0iA9brC0D0AJGk6hMn0l7MlvFtVdkODkTv5phcOTygfsJCqLfPDHZT
         2JMvNh/0jdI6gY6IgxpkM/4UpeSmbAXijmkhwc84ZnLA2l3+63dJtkuLQ4lG/g2QgwaE
         NRE0hBzi/yvgqgMkP4L8a8RXlVhgksWzgLTJ75XaEvYny6eK3m0P1fEUMDzQk1VMcxKb
         cGr6u8wAQgogDRG/EcvhkMuBDLrKm63F983mUbP8f2crQv31vByAWwTToN30TEoT1U/G
         hXo/UjoO0pS5c45IS16JCdFPTA4CPin3WgNA46aZ+aYFj7+j7VstyiucxSR8Cx9OK+yE
         o75g==
X-Forwarded-Encrypted: i=1; AKwUvBx55rX6SEbHbNlEAa3mU+1HoIUxrUl9dnQ3GempECYb0YiyNflUYfjMBNh2XoqbsrLt3Tiiw0twq0iPev/urw==@lists.infradead.org
X-Gm-Message-State: AFuF++ntbxZfHbzBtlVTYlliHaqWASSYFIbFddZFzlPJizwDrzXBw/EB
	3brDtqsYhOtWmdsjFHR77nVur64SLMVQsGWSOgJ0+44LqYu8Hfrq/iyST3WBar5YVMZPJybUnA2
	yrTEzyUfbV9wLoyDec0eTRWoE3O/t+495EbBaeWYA3c473Zli6Uu9E8R74ZX4mujB9BxqtOA77P
	MmWbdGhA1sx9Ze3VJYmiJsnP//K/9d66Yv+wW3HhQYi2ot+CzddA==
X-Gm-Gg: AYBFou26QDEQOZSIUXt0+fX8Vb70vMTo2PL8zpLfXqLepeDlrf1uyAKFUnFu7LSywjL
	s1DJ/FI81GDsrTeZvKxLOuc0dZFCuSpqtAEuYnxUj8XcY2CVAJvCtQ2aiN5B0tr9S/5pIQgonRC
	geSU8LXG6g4R6w9SI4kM+xbXjBh9wQjdsfzD7mGAUc/zlLrm10O94zFo7GVA==
X-Received: by 2002:a17:902:fd8e:b0:2df:84e0:9021 with SMTP id d9443c01a7336-2df84e0985dmr10949315ad.7.1790257721291;
        Thu, 24 Sep 2026 06:48:41 -0700 (PDT)
X-Received: by 2002:a17:902:fd8e:b0:2df:84e0:9021 with SMTP id
 d9443c01a7336-2df84e0985dmr10949065ad.7.1790257720872; Thu, 24 Sep 2026
 06:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260915104328.45901-1-gahing@gahingwoo.com> <CAPx+jO8EixqfXmrD8zkMkJe_B+2AATo=YNFJraAdE_O9X4KM-w@mail.gmail.com>
 <20260924090816.38457-1-gahing@gahingwoo.com>
In-Reply-To: <20260924090816.38457-1-gahing@gahingwoo.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Thu, 24 Sep 2026 15:48:29 +0200
X-Gm-Features: AclHuK_QXocrU1FUmDoQ1C4eNfLR68g-9FvqDtL-NyGnjY3Q7BSkJqEHWuwlS6Y
Message-ID: <CAPx+jO-zAr+gfEGG5xvWXz-72cU+mw2HOnm7xVBYGhMenZWSVw@mail.gmail.com>
Subject: Re: [PATCH v13 00/14] accel/rocket: RK3576 NPU (RKNN) enablement
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: heiko@sntech.de, p.zabel@pengutronix.de, tomeu@tomeuvizoso.net,
        chaoyi.chen@rock-chips.com, linux-pm@vger.kernel.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-Authority-Analysis: v=2.4 cv=Wrq+otfv c=1 sm=1 tr=0 ts=6ab52a3a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=9GNsruGHAAAA:8 a=gHPckg_Ghvi-cCk_7foA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-ORIG-GUID: IMs63C835upV2aRDIavh3j2deUt7EnK1
X-Proofpoint-GUID: IMs63C835upV2aRDIavh3j2deUt7EnK1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDA1NiBTYWx0ZWRfX7reVOOTFt6Oz
 9HOxpsLbkKZIinFPiwrLcIaw2r0D4Tpjdml8r79IwMn+edT0oo/71SRbObF3ydnBDxxxcnE7NE7
 Xu+6rnBXFkMwvMKKaUfTZKx+wCvOlargMWQoTM+EIf1Q9yqSki7j/9MrSmqkEu4mAoV2D+1ngFB
 kJM+Feovqwh5iS+M7bNiwvUjMopvHU2qPDzn6jHZfHKwT2q0/B2QUxakG1pE7MzO8F/H+cTled5
 YsKg43FWxdKzGteIKnKLRpGR4JBk/wbHLwjIyH0opIGOWaMs+1VqzTRUUBjBTBePyLycuOcpaHD
 uUlBp8GG8PHYnr25+cCM9bBHdVtpyft3GI04itwv5sbaaDALLmQ/UTTjGss0111q0NDr2XmqOwQ
 /g3ef/5DapobZfwOsM66skjPA7EO3mUzdtmYW7DxbsDkA3LZtq5BuO7iSmtpri4itkuAi+f2Mfs
 3eIzqoqxAV6+k9yQtIw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDA1NiBTYWx0ZWRfX9yWWAKw4BpxC
 a/dUG5zr99Wu2ZEDBlTRSfjdnQ4S8MCtLpzGktBlNcbAaGJ9zSy87kbMbQ+f9pS+fL9TDMlo4K2
 mIPwBhuMFCgqsdcVw+i0QHiPPyQSL2c=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609240056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_064843_708337_3EF38D14 
X-CRM114-Status: GOOD (  14.26  )
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

T24gVGh1LCBTZXAgMjQsIDIwMjYgYXQgMTE6MDjigK9BTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2Fo
aW5nd29vLmNvbT4gd3JvdGU6Cj4KPiBIaSBVbGYsCj4KPiBZZXMgcGxlYXNlLiBDb3VsZCB5b3Ug
dGFrZSB0aGVtIGZyb20gdjE0IHJhdGhlciB0aGFuIHRoaXMgdmVyc2lvbj8KPiBQaGlsaXBwIHBv
aW50ZWQgb3V0IHRoYXQgdGhlIGJpbmRpbmcgYWxsb3dzIG9uZSByZXNldCwgc28gMTAvMTQgc2hv
dWxkCj4gdXNlIG9mX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2ZSgpIHJhdGhl
ciB0aGFuIHRoZSBhcnJheQo+IGZvcm0uIHYxNCBoYXMgdGhhdCwgeW91ciB0d28gY29tbWl0IG1l
c3NhZ2UgdHJpbXMsIGFuZCBIZWlrbydzIHNwbGl0IG9mCj4gMTMvMTQuCgpPa2F5LCBnb29kIQoK
Pgo+IEluIDkvMTQsIHYxNCBrZWVwcyBvbmUgc2VudGVuY2UgYmV5b25kIHRoZSB0d28gcGFyYWdy
YXBocyB5b3Uga2VwdDoKPiBSSzM1NzZfUERfTlBVIGFsc28gZ2V0cyBuZWVkX3JlZ3VsYXRvciwg
d2hpY2ggbWFrZXMKPiByb2NrY2hpcF9wbV9hZGRfb25lX2RvbWFpbigpIHBvd2VyIHRoYXQgZG9t
YWluIG9mZiBhdCBwcm9iZSBvbiBldmVyeQo+IHJrMzU3NiBib2FyZC4gVGhlIHN1YmplY3QgZG9l
cyBub3QgZGVzY3JpYmUgdGhhdC4gU2F5IGlmIHlvdSB3YW50IGl0Cj4gZ29uZSB0b28uCgpJIHdp
bGwgaGF2ZSBhIGxvb2sgYXQgdjE0IGFuZCBsZXQgeW91IGtub3csIHRoYW5rcyEKCktpbmQgcmVn
YXJkcwpVZmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
