Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 872EDC54F54
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 04:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsdS+CB9zzxcGVhLceFHpW3JHZ1+OHd1zuxKdwxamEE=; b=ksQkj+G70nlRBu
	UFosYABGrYx8epqjc1AvF7Lf0JrMIt3mYPxpUMH5jZ/tsTEPAXBDcpHOumgMYMYFG00/hoh/XblbF
	uUHh/SapNw0mHShQ57zeTBlrouxJvwiiIr+4cfm238bIDERXKe9OH7+c9ZK1haPqVyPPF/qWZX3CN
	3ls69Fc16na15vsibpTXIXol32u/kZpsqrIK0hANMdySnfmuvPEFAeBRedmbsBpMHt1jXy7lqiLQm
	Nq6A7+PkYRSmHBEx4xc5slBrT3C+NY5YxAaku8I09F0d2C6XB41cDUl/h0qfmF0rPvnTFvocG6w44
	mK2l/NzXzcKd7j/cCIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woZSw-00000004OXD-2BVU;
	Tue, 28 Jul 2026 04:30:54 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woZSt-00000004OWf-2hsz
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 04:30:52 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-92e99ef0902so217901785a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 21:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785213050; cv=none;
        d=google.com; s=arc-20260327;
        b=F3Jq7Xv6CuHHnkTJezwVVZr3vCAqbw7CmebOBhhh0nIRN26iRcse3EaO/2nVGemvf1
         L98U/VH/uMfSRTnrsjT+All0DgAfkN6pd2+Kqzqx8eSOhTHxN/rQNhGtfxaG0jDEejh9
         MLl24eXK6btbX8GVDDHGc7ULto++ZGQ+wG/mc2XrVzIk8VxASqajeo2S21i3BsT6MRSJ
         PFSZXmSUFalt0DsoXelyiYHdSKInqctukNomteUpWup0tYD5wvlm/bKk9OS4zv/hX/ub
         d6cHIgCn/YhN1BJFSOZfgFYAvLPPzdSF8IDLvsyAESvsJwJvE/lqqMUxvn5eLgthsEUJ
         2LMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qjV2pUy3rvtNaBFX/a++TmN/dzOWLUnk9bmSeQU6miw=;
        fh=yw3k7lETsaBWgbSTnYAJjdqhfa5BxJ8V2k2LUenzYFA=;
        b=bgv2Wf3OXhN9h4QGnpKgRzCJEffmzykMah0eKDMxWWioJ7aBr6DeLvumiCCiXD7rnX
         K7x5VgnJUNHjTvu4l6cKUK0QOHy8aV3Em2tqlwz6R5nOsoN5JNJspqwAgClxsaQ9BM7O
         IQ2MurEQdqdPfCqghGM9p8gacPrs+LOP6jxO4zJ9B9fnfEvBNTU1ItCz0LxY+q27aqJ0
         7k0N5iaLkluP2wA3PzvlrvaFT5XAr5ji1CzqF1L77HDw0kh1KMrH9m6CU6cIkYnvzZru
         b7we6kN5o9FKWHW5cOEwcKnZfgVg2s7V1MvccU6xGV50NY1JBgjLGaIiAcpEjzeDE5iQ
         cPAQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785213050; x=1785817850; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qjV2pUy3rvtNaBFX/a++TmN/dzOWLUnk9bmSeQU6miw=;
        b=g9kzYhqSFUqi23oolB6Pq9PwGB6JZa7Tb5QqNMcuQA86gBRrO+AT1lW4hw0paLJhG9
         5TptLpu+/VFl2WSuExKEZ98Q32s+Ufh1Bp8t5bQT/JaCa+s2rCSqZB7l2yoZ0DbAaYVJ
         Z9XN7Vb/3ne6v+uNFYX64oCDNyiZQmCU4tZbiRz2XW+1QM3GDK99SCtm1y5P/EwDbBfh
         Sz66k5cZPD5n+UpBJYS4gOUM8wm+J5Db64PctyEm6i5JmS+lq+WS9JJLm8ZDK+m6xGpG
         /un7fiy4/0qBl76p+o1S0BSCjCCMn3MUfgLFXARibnmeSZjwBOMJr5v6ICfdERZ0iRYv
         3krA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785213050; x=1785817850;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=qjV2pUy3rvtNaBFX/a++TmN/dzOWLUnk9bmSeQU6miw=;
        b=hCgYs8VCuIn7EcyvtvKqHCQllxfq77BeQnHxn7EEcv/EjpcLWJJklvjYDf/rTJyIX2
         96C/6ZXiFT0w02Xn/3PUE3eaa26pQdujYSaGKyH0eZKe6Vg3KBWFnhhmhjKLiftaWDQv
         bfvNZj7tA8BebC50rpVkShzJxMchistxHfmb6D9c1EfpCmApZNrBpVwuEzN/i1tsO71e
         nu6DVzJFhniCNuVTnNMc7UrJFnZCDboFZ0A7l7MjQItB+Bk6drHU8P8fSEPFqfo+vxZ3
         6dioBEqi0vJi63iHBfL+6nimvtJtQaOsb2lPU3EYLKTl9e6roqcLMIc5KySBnW2tOVYC
         Yw+A==
X-Forwarded-Encrypted: i=1; AHgh+RpuSRQDZeac1eYgpUa5wuG+fWWVP216C0J/rv/0tQ4DiJhHZ+SVZnh+NsUmz5OBnFT6VDNatqJXLC+ySID8EQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBlps8IYEBEs7FCOsJmseNqNjnRGIsz8D2hwxVw/G6QEAT5WVV
	YPedONcEnOYycDluq9PZ7yUEOmyzzKSsU8FX6+u+De4phkixSutLrLQrGCkcJKCmZDRU9RJvL/E
	R7msC6uzLQvsjkuJtGg96ERMBZ/FtoNA=
X-Gm-Gg: AR+sD12D6+rz2o+dZ+GLCS1PQ9ggMs7GTdRrMuNtXvNIUqg80ryyPrdcuuFyRhHZoi+
	pcn5j+n2PUvKZxML4afEyIh2ZNNMr0l5uth6b9vL7FlUd3EPphjGW8r+P7zEzZCwE1PXbylme1U
	UxK1fCjh8ExO3ulgX55Q21Lfh9rOsr6In0C/amypWZvkbuPFDZMggHMHkaYowpAokHsLd11hM/2
	uhcOkD2ejiUqASXDPKp1D8xhO1QM80kfZhbr7Ai6ASdk8VKrMe9tvpS4YtwrY0xcNh53aO9c/0R
	JiX4nGBgJPSztKrBV50eTNvPLRHVQ74X5+QBumwOqRv2nropST+2
X-Received: by 2002:a05:620a:7081:b0:930:f67a:a9a0 with SMTP id
 af79cd13be357-9330267b509mr62851685a.79.1785213049961; Mon, 27 Jul 2026
 21:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260724131208.2315-1-tharitt97@gmail.com> <20260726024243.730-1-tharitt97@gmail.com>
 <amd2xoJdT5VffcoO@SMW015318>
In-Reply-To: <amd2xoJdT5VffcoO@SMW015318>
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
Date: Tue, 28 Jul 2026 11:30:38 +0700
X-Gm-Features: AUfX_mwiJC81_PI52kr7e7Fch4bHRZdipUBx0d855GSYbLOwLY7daHHv7kdwAcw
Message-ID: <CACak8wPnkMz4xgx-BLc4sAeMi01tw3XEBXoZn0B6numhRbFw4Q@mail.gmail.com>
Subject: Re: [PATCH v3] media: hantro: release runtime resources when
 device_run fails
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org, 
	me@brighamcampbell.com, jkoolstra@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_213051_690211_3C251546 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> You need convert to model RUMTIME_PM_OPS and SYSTEM_SLEEP_PM_OPS
>
> pm_ptr(hantro_pm_ops) at below hantro_driver
>
> and remove CONFIG_PM first,
>
> then add move clock manage into runtime pm management
>
> If you remove "CONFIG_PM" here, cause build error at some special config.
>
> Or keep CONFIG_PM at this patch, then convert to RUMTIME_PM_OPS() in
> following patch.
>
> Frank

I see, the compiler may flag resume/suspend callback unused if
CONFIG_PM=n and cause build error. Thanks for pointing this out.
I will keep CONFIG_PM and send a conversion in a subsequent patch.

Best,
Tharit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
