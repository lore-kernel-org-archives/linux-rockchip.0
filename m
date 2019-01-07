From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v2 1/2] media: v4l: Add definitions for the
 HEVC slice format and controls
Date: Mon, 07 Jan 2019 10:57:17 +0100
Message-ID: <64c793e08d61181b78125b3956ec38623fa5d261.camel@bootlin.com>
References: <20181123130209.11696-1-paul.kocialkowski@bootlin.com>
	 <20181123130209.11696-2-paul.kocialkowski@bootlin.com>
	 <5515174.7lFZcYkk85@jernej-laptop>
	 <ffe9c81db34b599f675ca5bbf02de360bf0a1608.camel@bootlin.com>
	 <776e63c9-d4a5-342a-e0f7-200ef144ffc4@rock-chips.com>
Reply-To: paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-sunxi+bncBCOO3QWNR4KRBCOFZTQQKGQEEPVGOWA-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org>
Sender: linux-sunxi-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org
In-Reply-To: <776e63c9-d4a5-342a-e0f7-200ef144ffc4-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Post: <https://groups.google.com/group/linux-sunxi/post>, <mailto:linux-sunxi-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org>
List-Help: <https://groups.google.com/support/>, <mailto:linux-sunxi+help-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org>
List-Archive: <https://groups.google.com/group/linux-sunxi
List-Subscribe: <https://groups.google.com/group/linux-sunxi/subscribe>, <mailto:linux-sunxi+subscribe-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org>
List-Unsubscribe: <mailto:googlegroups-manage+1076902468213+unsubscribe-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org>,
 <https://groups.google.com/group/linux-sunxi/subscribe>
To: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-sunxi-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Maxime Ripard <maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, 2019-01-07 at 11:49 +0800, Randy Li wrote:
> On 12/12/18 8:51 PM, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > On Wed, 2018-12-05 at 21:59 +0100, Jernej =C5=A0krabec wrote:
> >=20
> > > > +
> > > > +#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE	0x01
> > > > +#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER	0x02
> > > > +#define V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR		0x03
> > > > +
> > > > +#define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
> > > > +
> > > > +struct v4l2_hevc_dpb_entry {
> > > > +	__u32	buffer_tag;
> > > > +	__u8	rps;
> > > > +	__u8	field_pic;
> > > > +	__u16	pic_order_cnt[2];
> > > > +};
>=20
> Please add a property for reference index, if that rps is not used for=20
> this, some device would request that(not the rockchip one). And=20
> Rockchip's VDPU1 and VDPU2 for AVC would request a similar property.

What exactly is that reference index? Is it a bitstream element or
something deduced from the bitstream?

> Adding another buffer_tag for referring the memory of the motion vectors=
=20
> for each frames. Or a better method is add a meta data to echo picture=20
> buffer,  since the picture output is just the same as the original,=20
> display won't care whether the motion vectors are written the button of=
=20
> picture or somewhere else.

The motion vectors are passed as part of the raw bitstream data, in the
slices. Is there a case where the motion vectors are coded differently?

> > > > +
> > > > +struct v4l2_hevc_pred_weight_table {
> > > > +	__u8	luma_log2_weight_denom;
> > > > +	__s8	delta_chroma_log2_weight_denom;
> > > > +
> > > > +	__s8	delta_luma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +	__s8	luma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +	__s8	delta_chroma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > > > +	__s8	chroma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > > > +
> > > > +	__s8	delta_luma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +	__s8	luma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +	__s8	delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > > > +	__s8	chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > > > +};
> > > > +
> Those properties I think are not necessary are applying for the=20
> Rockchip's device, may not work for the others.

Yes, it's possible that some of the elements are not necessary for some
decoders. What we want is to cover all the elements that might be
required for a decoder.

> > > > +struct v4l2_ctrl_hevc_slice_params {
> > > > +	__u32	bit_size;
> > > > +	__u32	data_bit_offset;
> > > > +
> > > > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> > > > +	__u8	nal_unit_type;
> > > > +	__u8	nuh_temporal_id_plus1;
> > > > +
> > > > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment heade=
r */
> > > > +	__u8	slice_type;
> > > > +	__u8	colour_plane_id;
> -------------------------------------------------------------------------=
---
> > > > +	__u16	slice_pic_order_cnt;
> > > > +	__u8	slice_sao_luma_flag;
> > > > +	__u8	slice_sao_chroma_flag;
> > > > +	__u8	slice_temporal_mvp_enabled_flag;
> > > > +	__u8	num_ref_idx_l0_active_minus1;
> > > > +	__u8	num_ref_idx_l1_active_minus1;
> Rockchip's decoder doesn't use this part.
> > > > +	__u8	mvd_l1_zero_flag;
> > > > +	__u8	cabac_init_flag;
> > > > +	__u8	collocated_from_l0_flag;
> > > > +	__u8	collocated_ref_idx;
> > > > +	__u8	five_minus_max_num_merge_cand;
> > > > +	__u8	use_integer_mv_flag;
> > > > +	__s8	slice_qp_delta;
> > > > +	__s8	slice_cb_qp_offset;
> > > > +	__s8	slice_cr_qp_offset;
> > > > +	__s8	slice_act_y_qp_offset;
> > > > +	__s8	slice_act_cb_qp_offset;
> > > > +	__s8	slice_act_cr_qp_offset;
> > > > +	__u8	slice_deblocking_filter_disabled_flag;
> > > > +	__s8	slice_beta_offset_div2;
> > > > +	__s8	slice_tc_offset_div2;
> > > > +	__u8	slice_loop_filter_across_slices_enabled_flag;
> > > > +
> > > > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture timing SEI message =
*/
> > > > +	__u8	pic_struct;
> I think the decoder doesn't care about this, it is used for display.

The purpose of this field is to indicate whether the current picture is
a progressive frame or an interlaced field picture, which is useful for
decoding.

At least our decoder has a register field to indicate frame/top
field/bottom field, so we certainly need to keep the info around.
Looking at the spec and the ffmpeg implementation, it looks like this
flag of the bitstream is the usual way to report field coding.

Cheers,

Paul

> > > > +
> > > > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment heade=
r */
> > > > +	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +	__u8	num_active_dpb_entries;
> > > > +	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > > > +
> > > > +	__u8	num_rps_poc_st_curr_before;
> > > > +	__u8	num_rps_poc_st_curr_after;
> > > > +	__u8	num_rps_poc_lt_curr;
> > > > +
> > > > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction paramet=
er */
> > > > +	struct v4l2_hevc_pred_weight_table pred_weight_table;
> > > > +};
> > > > +
> > > >   #endif
--=20
Paul Kocialkowski, Bootlin (formerly Free Electrons)
Embedded Linux and kernel engineering
https://bootlin.com

--=20
You received this message because you are subscribed to the Google Groups "=
linux-sunxi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-sunxi+unsubscribe-/JYPxA39Uh5TLH3MbocFF+G/Ez6ZCGd0@public.gmane.org
For more options, visit https://groups.google.com/d/optout.
